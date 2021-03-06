
extension SKNode {
  class func obstacles(fromSpriteTextures sprites: [SKNode], accuracy: Float) -> [GKPolygonObstacle]
  class func obstacles(fromNodeBounds nodes: [SKNode]) -> [GKPolygonObstacle]
  class func obstacles(fromNodePhysicsBodies nodes: [SKNode]) -> [GKPolygonObstacle]
  @available(macOS 10.12, *)
  weak var entity: @sil_weak GKEntity?
}
extension SKScene : GKSceneRootNodeType {
}
extension SKTileMapNode {
  class func tileMapNodes(tileSet: SKTileSet, columns: Int, rows: Int, tileSize: CGSize, from noiseMap: GKNoiseMap, tileTypeNoiseMapThresholds thresholds: [NSNumber]) -> [SKTileMapNode]
}
extension SKTexture {
  @available(macOS 10.12, *)
  convenience init(noiseMap: GKNoiseMap)
}
