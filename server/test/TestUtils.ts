export class TestUtils {
  public async wait(ms: number) {
    return new Promise((resolve) => setTimeout(resolve, ms));
  }

  public async waitForSuccess(check: () => Promise<boolean>, timeout = 10000) {
    const start = Date.now();

    while (!(await check()) && Date.now() < start + timeout) {
      await this.wait(100);
    }
  }
}
