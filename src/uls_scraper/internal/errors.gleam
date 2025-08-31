import file_streams/file_stream_error
import gleam/httpc

pub type ScraperError {
  IOError(fse: file_stream_error.FileStreamError)
  RowParseError(msg: String)
  HelpfulError(msg: String)
  NetworkError(e: httpc.HttpError)
  ArgumentError(msg: String)
}
