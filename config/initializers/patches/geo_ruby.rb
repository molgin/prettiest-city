module GeoRuby

  module SimpleFeatures
    
    class MultiPolygon < GeometryCollection
      def contains_point?(point)
        geometries.any? do |polygon|
          polygon.contains_point?(point)
        end
      end

    end

  end

end