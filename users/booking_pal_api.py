import requests
from django.conf import settings

API_BASE_URL = settings.BOOKINGPAL_API_URL
API_KEY = settings.BOOKINGPAL_API_KEY

class Login:
    """
    Utility class to login, will return token in response

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/authorization/login

    Sample response:
        {
            "message":"",
            "errorMessage":[],
            "code":"",
            "token":"e481809a5e7b82b5894ab501d3ccbd35/53d585d5-77ac-45a0-a720-8a19ac59715a",
            "partyId":879374356,
            "organizationId":879374211,
            "name":"Test_Company",
            "currency":"USD",
            "supplierId":879374356,
            "is_error":false
        }
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self, pms_user=False):
        self.username = settings.BOOKINGPAL_PMS_USERNAME if pms_user else settings.BOOKINGPAL_USERNAME
        self.password = settings.BOOKINGPAL_PMS_PASSWORD if pms_user else settings.BOOKINGPAL_PASSWORD
    
    def get_token(self):
        url = f"{API_BASE_URL}/authc/login?username={self.username}&password={self.password}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json().get("token")
        else:
            # Some error occurred
            print(response.text)
            return False, {}


class PropertyManager:
    """
    Utiliy class to create and update property manager

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/property-managers/create-new-property-manager
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self):
        res, token = Login(pms_user=True).get_token()
        if not res:
            raise Exception("Login failed!!")
        else:
            self.token = token
    
    def create(self, payload):
        """
        Sample response:
        {'message': '', 'errorMessage': [], 'code': '', 'data': [{'companyDetails': {'accountId': '132', 'companyName': 'Test PM', 'language': 'en', 'fullName': 'Test PM', 'companyAddress': {'country': 'US', 'state': 'Test State', 'streetAddress': 'Test Street', 'city': 'Test City', 'zip': '13245'}, 'website': 'www.testsite.com', 'email': 'apimaticPMemail4@test.com', 'phone': {'countryCode': '+321', 'number': '132456'}, 'password': 'password', 'currency': 'USD', 'transportCompanyAdditionalDetails': {'pmsName': 'EZBZ Rentals', 'extraName': 'Test PM', 'useSupplierApi': True, 'logoUrl': None, 'sendGuestManageBooking': True, 'phoneIsVerified': None, 'businessTaxID': None, 'escapiaPms': None}}, 'policies': {'paymentPolicy': {'type': 'SPLIT', 'splitPayment': {'depositType': 'FLAT', 'value': 4.0, 'secondPaymentDays': 30}}, 'cancellationPolicy': {'type': 'MANUAL', 'manualPolicy': {'type': 'FLAT', 'manualPolicies': [{'chargeValue': 20, 'beforeDays': 34, 'cancellationFee': 1.0}, {'chargeValue': 12, 'beforeDays': 45, 'cancellationFee': 2.0}]}}, 'feeTaxMandatory': {'isFeeMandatory': True, 'isTaxMandatory': True}, 'terms': 'www.test.com', 'checkInTime': '10:00:00', 'checkOutTime': '10:00:00', 'leadTime': 2}, 'payment': {'paymentType': 'MAIL_CHECK', 'creditCard': {'creditCardType': 'POST', 'creditCardList': ['AMERICAN_EXPRESS', 'DINERS_CLUB', 'DISCOVER', 'MASTER_CARD', 'VISA'], 'paymentGateways': {}}}, 'additionalContacts': [], 'id': 879374379, 'enableRms': False, 'isCompany': True, 'ownerInfo': {'language': 'EN', 'value': 'ownerInfo on EN'}, 'neighborhoodOverview': {'language': 'EN', 'value': 'neighborhoodOverview on EN'}}], 'is_error': False}
        """
        url = f"{API_BASE_URL}/pm?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)

    def update(self, payload):
        url = f"{API_BASE_URL}/pm/{payload.get('data').get('id')}?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("PUT", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)

    def fetch_all(self):
        url = f"{API_BASE_URL}/pmlist?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response.text)


class ProductManager:
    """
    Utiliy class to create, update, delete, activate/deactivate and fetch product

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/product/create-product
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self):
        res, token = Login().get_token()
        if not res:
            raise Exception("Login failed!!")
        else:
            self.token = token

    def fetch_all(self):
        url = f"{API_BASE_URL}/product?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response.text)

    def create(self, payload):
        """
        Sample payload: payload = { "data": { "name": "name test 1", "rooms": 5, "bathrooms": 5, "persons": 2, "propertyType": "PCT102", "currency": "USD", "supportedLosRates": False, "location": { "postalCode": "60606", "country": "US", "region": "Illinois", "city": "Chicago", "street": "210 North Wells Street", "zipCode9": "60606-1330" }, # "spaceUnit": "SQ_M", # "bedroomConfiguration": { # "bedrooms": [ #     { #     "beds": { #         "bed": [ #         { #             "bedType": "RMA113", #             "count": 1 #         }, #         { #             "bedType": "RMA58", #             "count": 1 #         } #         ] #     }, #     "type": "Bedroom", #     "privateBathroom": False #     }, #     { #     "beds": { #         "bed": [ #         { #             "bedType": "RMA113", #             "count": 1 #         }, #         { #             "bedType": "RMA58", #             "count": 1 #         } #         ] #     }, #     "type": "Bedroom", #     "privateBathroom": False #     }, #     { #     "beds": { #         "bed": [ #         { #             "bedType": "RMA113", #             "count": 1 #         }, #         { #             "bedType": "RMA86", #             "count": 1 #         } #         ] #     }, #     "type": "Bedroom", #     "privateBathroom": False #     }, #     { #     "beds": { #         "bed": [ #         { #             "bedType": "RMA113", #             "count": 1 #         } #         ] #     }, #     "type": "Bedroom", #     "privateBathroom": False #     }, #     { #     "beds": { #         "bed": [ #         { #             "bedType": "RMA113", #             "count": 1 #         } #         ] #     }, #     "type": "Bedroom", #     "privateBathroom": False #     }, #     { #     "beds": { #         "bed": [ #         { #             "bedType": "RMA58", #             "count": 1 #         } #         ] #     }, #     "type": "Bedroom", #     "privateBathroom": True #     }, #     { #     "beds": { #         "bed": [ #         { #             "bedType": "RMA58", #             "count": 1 #         } #         ] #     }, #     "type": "Living Room", #     "privateBathroom": False #     } # ] # }, # "policy": { # "internetPolicy": { #     "accessInternet": True, #     "kindOfInternet": "WiFi", #     "availableInternet": "AllAreas", #     "chargeInternet": "Free" # }, # "parkingPolicy": { #     "accessParking": True, #     "locatedParking": "OnSite", #     "privateParking": True, #     "chargeParking": "$ 150", #     "timeCostParking": "PerStay", #     "necessaryReservationParking": "NotPossible" # }, # "petPolicy": { #     "allowedPets": "Allowed", #     "chargePets": "Free" # }, # "childrenAllowed": True, # "smokingAllowed": False # }, # "multiUnit": "MLT", # "keyCollection": { # "type": "primary", # "checkInMethod": "doorman", # "additionalInfo": { #     "instruction": { #     "how": "how example", #     "when": "when example" #     } # } # }, # "neighborhoodOverview": {}, # "about": {} } }
        Sample response: {'message': '', 'errorMessage': [], 'code': '', 'data': [{'name': 'name test 1', 'id': 1237790311, 'supplierId': 879374356, 'rooms': 5, 'bathrooms': 5.0, 'persons': 2, 'childs': 0, 'latitude': 41.8860176, 'longitude': -87.6341913, 'livingRoom': 0, 'notes': {}, 'attributesWithQuantity': [], 'nearbyAmenities': [], 'propertyType': 'PCT102', 'bedroomConfiguration': {'bedrooms': []}, 'checkInTime': '15:00:00', 'checkOutTime': '11:00:00', 'currency': 'USD', 'policy': {'internetPolicy': {'accessInternet': False}, 'parkingPolicy': {'accessParking': False}, 'petPolicy': {}}, 'location': {'postalCode': '60606', 'country': 'US', 'region': 'Illinois', 'city': 'Chicago', 'street': 'North Wells Street', 'displayExactLocation': True}, 'supportedLosRates': False, 'propertyRating': 0.0, 'ratingNumber': 0, 'basePrice': 100.0, 'bpValidation': True, 'enableRms': False, 'hostLocation': 'OFF_SITE', 'usedisplayname': False}], 'is_error': False}
        """
        
        url = f"{API_BASE_URL}/product?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)

    def update(self, payload):
        url = f"{API_BASE_URL}/product?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("PUT", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)

    def delete(self, product_id):
        """
        Sample response: {'message': 'Product with id 1237790312 was deleted', 'errorMessage': [], 'code': '', 'is_error': False}
        """
        url = f"{API_BASE_URL}/product/{product_id}?jwt={self.token}"
        response = requests.request("DELETE", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)
    
    def fetch_one(self, product_id):
        """
        Sample response: {'message': '', 'errorMessage': [], 'code': '', 'data': [{'name': 'name test 1 edited', 'id': 1237790311, 'supplierId': 879374356, 'rooms': 6, 'bathrooms': 6.0, 'persons': 3, 'childs': 0, 'latitude': 41.8860176, 'longitude': -87.6341913, 'livingRoom': 0, 'notes': {}, 'attributesWithQuantity': [], 'nearbyAmenities': [], 'propertyType': 'PCT102', 'bedroomConfiguration': {'bedrooms': []}, 'checkInTime': '15:00:00', 'checkOutTime': '11:00:00', 'currency': 'USD', 'policy': {'internetPolicy': {'accessInternet': False}, 'parkingPolicy': {'accessParking': False}, 'petPolicy': {}}, 'location': {'postalCode': '60606', 'country': 'US', 'region': 'Illinois', 'city': 'Chicago', 'street': '210 North Wells Street', 'zipCode9': '60606-1330', 'displayExactLocation': True}, 'supportedLosRates': False, 'propertyRating': 0.0, 'ratingNumber': 0, 'basePrice': 100.0, 'bpValidation': True, 'enableRms': False, 'hostLocation': 'OFF_SITE', 'usedisplayname': False}], 'is_error': False}
        """
        url = f"{API_BASE_URL}/product/{product_id}?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)
    
    def activate(self, product_id_list):
        url = f"{API_BASE_URL}/product/activation?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json={"data": product_id_list})
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)
    
    def deactivate(self, product_id_list):
        url = f"{API_BASE_URL}/product/deactivation?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json={"data": product_id_list})
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)


class ProductImages:
    """
    Utiliy class to create, update and delete product images

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/images/addimage
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self):
        res, token = Login().get_token()
        if not res:
            raise Exception("Login failed!!")
        else:
            self.token = token

    def fetch_all(self, product_id):
        url = f"{API_BASE_URL}/image/{product_id}?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response.text)

    def create(self, payload):
        
        url = f"{API_BASE_URL}/image?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)
    
    def delete(self, payload):
        """
        Sample response: {'message': 'Product with id 1237790312 was deleted', 'errorMessage': [], 'code': '', 'is_error': False}
        """
        url = f"{API_BASE_URL}/image/delete?jwt={self.token}"
        response = requests.request("DELETE", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)


class RatesAndAvailability:
    """
    Utiliy class to create, update and delete product images

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/rates-and-availability/create-and-update-rates-and-availability
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self):
        res, token = Login().get_token()
        if not res:
            raise Exception("Login failed!!")
        else:
            self.token = token

    def fetch_all(self, product_id):
        url = f"{API_BASE_URL}/ra/{product_id}?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response.text)

    def create(self, payload):
        """
        Sample response: 
        """
        url = f"{API_BASE_URL}/ra?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)


class LosPricing:
    """
    Utiliy class to create, update and fetch LOS Pricing

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/los-pricing/create-and-update-los-length-of-stay-pricing
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self):
        res, token = Login().get_token()
        if not res:
            raise Exception("Login failed!!")
        else:
            self.token = token

    def fetch_all(self, product_id):
        url = f"{API_BASE_URL}/losrates/{product_id}?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response.text)

    def create(self, payload):
        """
        Sample payload: {
            "data": {
                "productId": 192,
                "losRates": [
                {
                    "checkInDate": "2016-03-13",
                    "maxGuests": 43,
                    "losValue": [
                    193.13,
                    193.14,
                    193.15
                    ]
                }
                ]
            }
        }
        """
        url = f"{API_BASE_URL}/losrates?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)


class FeeAndTax:
    """
    Utiliy class to create and fetch Fee & Tax of product

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/fee-and-tax/create-fee-and-tax
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self):
        res, token = Login().get_token()
        if not res:
            raise Exception("Login failed!!")
        else:
            self.token = token

    def fetch_all(self, product_id):
        url = f"{API_BASE_URL}/taxfee/{product_id}?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response.text)

    def create(self, payload):
        url = f"{API_BASE_URL}/taxfee?jwt={self.token}"
        headers = self.headers
        headers['Content-Type'] = 'application/json'
        response = requests.request("POST", url, headers=headers, json=payload)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)

class DistributeBooking:
    """
    Utiliy class to create and fetch Fee & Tax of product

    Documentation: https://developerstesting.channelconnector.com/documentation#/rest/api-endpoints/fee-and-tax/create-fee-and-tax
    """
    headers = {
        'Accept': 'application/json',
        'X-API-key': API_KEY
    }
    def __init__(self):
        res, token = Login(pms_user=True).get_token()
        if not res:
            raise Exception("Login failed!!")
        else:
            self.token = token

    def fetch_all(self):
        url = f"{API_BASE_URL}/taxfee/{product_id}?jwt={self.token}"
        response = requests.request("GET", url, headers=self.headers)
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response.text)

    def create(self, payload):
        url = f"{API_BASE_URL}/channel-configuration?jwt={self.token}"
        # headers = self.headers
        # headers['Content-Type'] = 'application/json'
        response = requests.request("GET", url, headers=self.headers) #, json=payload
        if response.status_code == 200:
            if response.json().get('is_error'):
                print(response.json().get('errorMessage'))
                return False, {}
            else:
                return True, response.json()
        else:
            print("Some error occurred!!")
            print(response)
            print(response.content)
