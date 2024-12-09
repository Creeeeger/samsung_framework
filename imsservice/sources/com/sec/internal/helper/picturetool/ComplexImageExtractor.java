package com.sec.internal.helper.picturetool;

import android.graphics.Bitmap;
import android.util.Log;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.picturetool.GifDecoder;
import com.sec.internal.helper.translate.ContentTypeTranslator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.Vector;

/* loaded from: classes.dex */
public class ComplexImageExtractor {
    private static final String CONTENT_TYPE_GIF = "image/gif";
    private static final String LOG_TAG = "ComplexImageExtractor";
    private static final String TEMP_FILE_PREFIX = "FT_thumb";
    private GifDecoder mDecoder = null;

    private String getFileExtension(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf < 0) {
            return null;
        }
        return str.substring(lastIndexOf + 1).toUpperCase(Locale.ENGLISH);
    }

    public File extractFrom(File file) {
        FileOutputStream fileOutputStream = null;
        if (file == null) {
            Log.e(LOG_TAG, "imageFile == null");
            return null;
        }
        String fileExtension = getFileExtension(file.getName());
        if (fileExtension == null) {
            Log.e(LOG_TAG, "fileName == null");
            return null;
        }
        if (ContentTypeTranslator.translate(fileExtension).contains(CONTENT_TYPE_GIF)) {
            Log.d(LOG_TAG, "Gid decoder: extractFrom, file=" + file.getAbsolutePath());
            GifDecoder gifDecoder = new GifDecoder();
            this.mDecoder = gifDecoder;
            int read = gifDecoder.read(file.getAbsolutePath());
            if (read != 0) {
                throw new IllegalArgumentException("GifDecoder read routine has ended with an error: " + read);
            }
            Vector<GifDecoder.GifFrame> frames = this.mDecoder.getFrames();
            Preconditions.checkNotNull(frames);
            try {
                if (frames.size() <= 0) {
                    throw new IllegalArgumentException(String.format("Requested frame was: 0 but %d only available.", Integer.valueOf(frames.size())));
                }
                try {
                    File createTempFile = File.createTempFile(TEMP_FILE_PREFIX, ".jpg");
                    FileOutputStream fileOutputStream2 = new FileOutputStream(createTempFile);
                    try {
                        try {
                            try {
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        if (frames.get(0).image.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2)) {
                            try {
                                try {
                                    fileOutputStream2.flush();
                                    fileOutputStream2.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    fileOutputStream2.close();
                                }
                                return createTempFile;
                            } catch (Throwable th) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                                throw th;
                            }
                        }
                        try {
                            try {
                                fileOutputStream2.flush();
                                fileOutputStream2.close();
                            } catch (Throwable th2) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                                throw th2;
                            }
                        } catch (IOException e6) {
                            e6.printStackTrace();
                            fileOutputStream2.close();
                        }
                        return file;
                    } catch (IOException e7) {
                        e = e7;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                try {
                                    try {
                                        fileOutputStream.flush();
                                    } finally {
                                    }
                                } catch (IOException e8) {
                                    e8.printStackTrace();
                                }
                            } catch (IOException e9) {
                                e9.printStackTrace();
                                fileOutputStream.close();
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        return file;
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                try {
                                    try {
                                        fileOutputStream.flush();
                                    } finally {
                                    }
                                } catch (IOException e10) {
                                    e10.printStackTrace();
                                    throw th;
                                }
                            } catch (IOException e11) {
                                e11.printStackTrace();
                                fileOutputStream.close();
                                throw th;
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    e = e12;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return file;
    }

    public void release() {
        GifDecoder gifDecoder = this.mDecoder;
        if (gifDecoder != null) {
            gifDecoder.clean();
        }
    }
}
