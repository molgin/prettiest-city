module GeoRuby

  module SimpleFeatures
    
    class MultiPolygon < GeometryCollection

      def contains_point?(point)
        geometries.each do |polygon|
          if polygon.contains_point?(point)
            return true
          end
        end
        false
      end

    end

  end

end