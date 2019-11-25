
class GraficEqualizer {
  float one_width;
  float smooth_factor = 0.3;
  int specSize;
  float[] fftSmooth;

  GraficEqualizer() {
    in = minim.getLineIn(Minim.STEREO, 512);
    fft = new FFT(in.bufferSize(), in.sampleRate());
    specSize = fft.specSize();
    fftSmooth = new float[specSize];
    colorMode(HSB, specSize, 100, 100);
  }
  void drawEqualize() {
    fft.forward(in.left);
    for (int i = 0; i < specSize; i++)
    {
      float band = fft.getBand(i);

      fftSmooth[i] *= 0.8;
      if (fftSmooth[i] < band) fftSmooth[i] = band;
      stroke(i, 100, 100);
      strokeWeight(5);
      line( i*5, height, i*5, height - fftSmooth[i]*100 );
    }
  }
}
