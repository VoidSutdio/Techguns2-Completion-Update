package techguns.world.structures.city;

import net.minecraft.world.World;
import techguns.world.structures.WorldgenStructure;

import java.util.Random;

public class CityBuilding extends WorldgenStructure {

    CityBuildingType buildingType;

    public CityBuilding(CityBuildingType buildingType, int minX, int minY, int minZ, int maxX, int maxY,
                        int maxZ) {
        super(minX, minY, minZ, maxX, maxY, maxZ);
        this.buildingType = buildingType;
    }

    @Override
    public void setBlocks(World world, int posX, int posY, int posZ, int sizeX, int sizeY, int sizeZ, int direction,
                          BiomeColorType colorType, Random rnd) {
        buildingType.setBlocks(world, posX, posY, posZ, sizeX, sizeY, sizeZ, direction, colorType);
    }
}
