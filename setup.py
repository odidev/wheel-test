
if __name__ == '__main__':

    from setuptools import setup, Extension, Distribution

    setup(
            name="fputs",
            version="1.0.0",
            description="Python interface for the fputs C library function",
            author="Janakarajan Natarajan",
            author_email="janakarajan.natarajan@example.com",
            ext_modules=[Extension("fputs", ["fputsmodule.c"])],
    )
