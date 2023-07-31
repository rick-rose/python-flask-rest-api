from passlib.context import CryptContext


class IdentityContext:
    def __init__(self):
        self.identity_context = CryptContext(
            schemes=["pbkdf2_sha256"],
            default="pbkdf2_sha256",
            pbkdf2_sha256__default_rounds=30000,
        )

    def encrypt_password(self, password):
        return self.identity_context.encrypt(password)

    def verify_password(self, password, hashed):
        return self.identity_context.verify(password, hashed)
