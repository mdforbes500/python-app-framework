import unittest
from app.main import app


# Add your tests here
class TestMain(unittest.TestCase):
    def test_home(self):
        with app.test_client() as client:
            response = client.get('/')
            self.assertEqual(response.status_code, 200)
            self.assertEqual(response.data, b'Hello World!')


if __name__ == '__main__':
    unittest.main()