
if __name__ == '__main__':

    from setuptools import setup, Extension

    extension_module = Extension(
            'fputs',
            sources=['fputsmodule.c'],
    )

    setup(
            name="wheel_test",
            version="1.0.0",
            description="Python interface for the fputs C library function",
            author="Janakarajan Natarajan",
            author_email="janakarajan.natarajan@example.com",
            ext_modules=[extension_module],
    )
