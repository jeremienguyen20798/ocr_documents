class BaseRequest {
  final Map<String, dynamic> params;

  BaseRequest(this.params);

  Map<String, dynamic> toJson() {
    return {"jsonrpc": 2.0, "method": "call", "params": params};
  }
}
