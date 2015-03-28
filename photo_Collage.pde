import java.io.*;




File dir; 
File [] files;
PImage [] images;
int imageCount = 0;

void setup() {
  String brett_test_path = "../../photo_booth/images/photo_booth";
  
  size(600, 600);
  dir= new java.io.File(dataPath("/Users/mischaabakumova/Dropbox/Public/photo_booth/images/photo_booth"));
  files= dir.listFiles(); //get the list og files
  printArray(files);
  images = new PImage[files.length];
}

void draw() { 
  noLoop();
//  for (int i = 0; i <= files.length - 1; i++)
//  {
//    String path = files[i].getAbsolutePath();
//    println(path);
//  }
 for (int i = 0; i < files.length; i++)
    {
        String fileName = files[i].getName().toLowerCase();
        if (fileName.endsWith(".jpg") || fileName.endsWith(".JPG"))
        {
<<<<<<< HEAD
          images[imageCount] = loadImage(files[i].getAbsolutePath());
          image( images[imageCount], 0, 0);
          imageCount++;
=======
          images[imageCount++] = loadImage(files[i].getAbsolutePath());
          image( images[i], 0, 0);
>>>>>>> 93141e08410e46ac4cdb55e1bdf994e8a13de912
        }
    }
//        return images;
}

