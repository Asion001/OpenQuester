export class UnitTestUtils {
  public async sleep(ms: number) {
    return new Promise((resolve) => setTimeout(resolve, ms));
  }

  public async waitForSuccess(
    check: () => Promise<boolean>,
    timeout = 15000,
    stepMs: number = 100
  ) {
    const start = Date.now();

    while (!(await check()) && Date.now() < start + timeout) {
      await this.sleep(stepMs);
    }

    if (Date.now() >= start + timeout) {
      throw new Error("Wait for success evaluation timed out.");
    }
  }
}
