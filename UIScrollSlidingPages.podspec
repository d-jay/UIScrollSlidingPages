Pod::Spec.new do |s|
  s.name = 'UIScrollSlidingPages'
  s.version = '1.0'
  s.platform = :ios, '5.0'
  s.license = 'MIT'
  s.summary = 'forked from traintrackcn/UIScrollSlidingPages'
  s.homepage = 'https://github.com/d-jay/UIScrollSlidingPages'
  s.authors = { 'd-jay' => 'd-jay@github.com'}
  
  s.subspec 'Source' do |ss|
    ss.source_files    = 'UIScrollViewSlidingPages/Source/*.{h,m}'
    ss.requires_arc    = true
  end
  
end