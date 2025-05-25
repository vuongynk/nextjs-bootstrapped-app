"use client"

import Link from "next/link"
import Image from "next/image"
import { Search, Users, Clock, Award } from "lucide-react"

interface Feature {
  icon: React.ReactNode;
  title: string;
  description: string;
}

export default function Home() {
  const features: Feature[] = [
    {
      icon: <Search className="w-6 h-6" />,
      title: "Tìm kiếm & đăng ký khóa học",
      description: "Dễ dàng tìm kiếm và đăng ký các khóa học phù hợp với mục tiêu của bạn"
    },
    {
      icon: <Users className="w-6 h-6" />,
      title: "Giảng viên chất lượng cao",
      description: "Học từ đội ngũ giảng viên giàu kinh nghiệm và chuyên môn"
    },
    {
      icon: <Clock className="w-6 h-6" />,
      title: "Học tập linh hoạt",
      description: "Tự do học tập theo tiến độ và thời gian phù hợp với bạn"
    },
    {
      icon: <Award className="w-6 h-6" />,
      title: "Chứng chỉ được công nhận",
      description: "Nhận chứng chỉ có giá trị sau khi hoàn thành khóa học"
    }
  ]

  return (
    <div className="min-h-screen">
      {/* Hero Section */}
      <section className="relative h-[600px] flex items-center">
        {/* Background Image */}
        <div className="absolute inset-0 z-0">
          <Image
            src="https://images.pexels.com/photos/4050315/pexels-photo-4050315.jpeg"
            alt="Online Learning"
            fill
            priority
            className="object-cover brightness-50"
            sizes="100vw"
          />
        </div>
        
        {/* Content */}
        <div className="container mx-auto px-4 relative z-10">
          <div className="max-w-3xl">
            <h1 className="text-4xl md:text-6xl font-bold text-white mb-6">
              Nền Tảng Học Tập Trực Tuyến Hiện Đại
            </h1>
            <p className="text-xl text-gray-200 mb-8">
              Khám phá hàng nghìn khóa học chất lượng cao từ các chuyên gia hàng đầu
            </p>
            <div className="flex flex-col sm:flex-row gap-4">
              <Link 
                href="/courses" 
                className="inline-block px-8 py-4 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors text-center"
              >
                Khám phá khóa học
              </Link>
              <Link 
                href="/about" 
                className="inline-block px-8 py-4 bg-white text-blue-600 rounded-lg hover:bg-gray-100 transition-colors text-center"
              >
                Tìm hiểu thêm
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Features Section */}
      <section className="py-20 bg-gray-50">
        <div className="container mx-auto px-4">
          <div className="text-center mb-16">
            <h2 className="text-3xl font-bold text-gray-900 mb-4">
              Tại sao chọn chúng tôi?
            </h2>
            <p className="text-lg text-gray-600 max-w-2xl mx-auto">
              Chúng tôi cung cấp nền tảng học tập trực tuyến hiện đại với nhiều tính năng ưu việt
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
            {features.map((feature, index) => (
              <div 
                key={index} 
                className="bg-white p-8 rounded-xl shadow-sm hover:shadow-md transition-shadow"
              >
                <div className={`w-12 h-12 ${index % 2 === 0 ? 'bg-blue-100' : 'bg-pink-100'} rounded-lg flex items-center justify-center mb-6`}>
                  <div className={index % 2 === 0 ? 'text-blue-600' : 'text-pink-600'}>
                    {feature.icon}
                  </div>
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">
                  {feature.title}
                </h3>
                <p className="text-gray-600">
                  {feature.description}
                </p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-20 bg-blue-600">
        <div className="container mx-auto px-4 text-center">
          <h2 className="text-3xl font-bold text-white mb-6">
            Sẵn sàng bắt đầu hành trình học tập của bạn?
          </h2>
          <p className="text-xl text-blue-100 mb-8 max-w-2xl mx-auto">
            Đăng ký ngay hôm nay để trải nghiệm nền tảng học tập trực tuyến hiện đại của chúng tôi
          </p>
          <Link 
            href="/register" 
            className="inline-block px-8 py-4 bg-white text-blue-600 rounded-lg hover:bg-gray-100 transition-colors text-center font-medium"
          >
            Đăng ký miễn phí
          </Link>
        </div>
      </section>
    </div>
  )
}
