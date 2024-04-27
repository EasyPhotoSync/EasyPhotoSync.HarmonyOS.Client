/**
 * 图像
 */
export  class Photo {
  // 路径
  private _path: string = ''
  /**
   * 获取路径
   * @returns
   */
  get path(): string {
    return this._path
  }
  /**
   * 设置路径
   * @param value
   */
  set path(value: string) {
    this._path = value
  }
}