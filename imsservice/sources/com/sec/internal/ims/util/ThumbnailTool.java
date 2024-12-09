package com.sec.internal.ims.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.picturetool.BitmapExtractor;
import com.sec.internal.helper.picturetool.ComplexImageExtractor;
import com.sec.internal.helper.picturetool.ContentTypeContextCreator;
import com.sec.internal.helper.picturetool.FullCompressionDescriptor;
import com.sec.internal.helper.picturetool.ICompressionDescriptor;
import com.sec.internal.helper.picturetool.IContentTypeContext;
import com.sec.internal.helper.picturetool.IVideoPreviewExtractor;
import com.sec.internal.helper.picturetool.ImageDimensionsExtractor;
import com.sec.internal.helper.picturetool.PanicCompressionDescriptor;
import com.sec.internal.helper.picturetool.ReadScaleCalculator;
import com.sec.internal.helper.picturetool.UniqueFilePathResolver;
import com.sec.internal.helper.picturetool.VideoPreviewExtractor;
import com.sec.internal.helper.translate.ContentTypeTranslator;
import com.sec.internal.ims.util.IThumbnailTool;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public class ThumbnailTool extends Handler implements IThumbnailTool {
    private static final int EVT_THUMBNAIL_CREATE = 1000;
    private static final int EVT_THUMBNAIL_CREATE_FROM_IMAGE = 1001;
    private static final int EVT_THUMBNAIL_CREATE_FROM_IMAGE_AS_SIZE = 1002;
    private static final int EVT_THUMBNAIL_CREATE_FROM_VIDEO = 1003;
    private static final int EVT_THUMBNAIL_CREATE_FROM_VIDEO_AS_SIZE = 1004;
    private static final String EXT_PNG = "image/png";
    private static final String LOG_TAG = "ThumbnailTool";
    private static final String SUBDIR_NAME = ".rcs_thumbnail";
    private BitmapExtractor mBitmapExtractor;
    private ComplexImageExtractor mComplexImageExtractor;
    private ContentTypeContextCreator mContentTypeContextCreator;
    private Context mContext;
    private ImageDimensionsExtractor mImageDimensionsExtractor;
    private ICompressionDescriptor mPanicDescriptor;
    private String mSavedDir;
    private VideoPreviewExtractor mVideoPreviewExtractor;
    private static final Set<String> IMAGE_EXTENSIONS = new HashSet(Arrays.asList("JPG", "JPEG", "BMP", "PNG", "GIF", "WBMP"));
    private static final Set<String> VIDEO_EXTENSIONS = new HashSet(Arrays.asList("3GP", "MP4", "AVI"));

    private static class ThumbnailInfor {
        private Message callback;
        private String destFilePath;
        private int height;
        private long maxSize;
        private String originalFilePath;
        private int width;

        private ThumbnailInfor() {
        }
    }

    private String getFileExtension(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf < 0) {
            return null;
        }
        return str.substring(lastIndexOf + 1).toUpperCase(Locale.ENGLISH);
    }

    public ThumbnailTool(Context context, Looper looper) {
        super(looper);
        this.mSavedDir = null;
        this.mComplexImageExtractor = new ComplexImageExtractor();
        this.mImageDimensionsExtractor = new ImageDimensionsExtractor();
        this.mContext = context;
        this.mPanicDescriptor = new PanicCompressionDescriptor();
        this.mBitmapExtractor = new BitmapExtractor();
        this.mContentTypeContextCreator = new ContentTypeContextCreator();
        this.mVideoPreviewExtractor = new VideoPreviewExtractor(this.mBitmapExtractor);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String createThumbFromVideo;
        ThumbnailInfor thumbnailInfor = (ThumbnailInfor) message.obj;
        Log.d(LOG_TAG, "handleMessage: " + message.what);
        switch (message.what) {
            case 1000:
                String fileExtension = getFileExtension(thumbnailInfor.originalFilePath);
                Log.d(LOG_TAG, "handleMessage: original=" + thumbnailInfor.originalFilePath + ", fileExtension=" + fileExtension + ", dest=" + thumbnailInfor.destFilePath);
                if (IMAGE_EXTENSIONS.contains(fileExtension)) {
                    createThumbFromVideo = createThumbFromImage(new File(thumbnailInfor.originalFilePath), new File(thumbnailInfor.destFilePath), thumbnailInfor.maxSize, Integer.MAX_VALUE, Integer.MAX_VALUE);
                    break;
                } else {
                    if (VIDEO_EXTENSIONS.contains(fileExtension)) {
                        createThumbFromVideo = createThumbFromVideo(new File(thumbnailInfor.originalFilePath), new File(thumbnailInfor.destFilePath), thumbnailInfor.maxSize, Integer.MAX_VALUE, Integer.MAX_VALUE);
                        break;
                    }
                    createThumbFromVideo = null;
                    break;
                }
            case 1001:
                createThumbFromVideo = createThumbFromImage(new File(thumbnailInfor.originalFilePath), new File(thumbnailInfor.destFilePath), thumbnailInfor.maxSize, Integer.MAX_VALUE, Integer.MAX_VALUE);
                break;
            case 1002:
                createThumbFromVideo = createThumbFromImage(new File(thumbnailInfor.originalFilePath), new File(thumbnailInfor.destFilePath), thumbnailInfor.maxSize, thumbnailInfor.width, thumbnailInfor.height);
                break;
            case 1003:
                createThumbFromVideo = createThumbFromVideo(new File(thumbnailInfor.originalFilePath), new File(thumbnailInfor.destFilePath), thumbnailInfor.maxSize, Integer.MAX_VALUE, Integer.MAX_VALUE);
                break;
            case 1004:
                createThumbFromVideo = createThumbFromVideo(new File(thumbnailInfor.originalFilePath), new File(thumbnailInfor.destFilePath), thumbnailInfor.maxSize, thumbnailInfor.width, thumbnailInfor.height);
                break;
            default:
                Log.d(LOG_TAG, "Unsupport file format!!!");
                createThumbFromVideo = null;
                break;
        }
        if (thumbnailInfor.callback != null) {
            AsyncResult.forMessage(thumbnailInfor.callback, createThumbFromVideo, null);
            thumbnailInfor.callback.sendToTarget();
        }
    }

    @Override // com.sec.internal.ims.util.IThumbnailTool
    public boolean isSupported(String str) {
        Log.d(LOG_TAG, "The thumbnailFile type is " + str);
        return str.startsWith(CallConstants.ComposerData.IMAGE) || str.startsWith(SipMsg.FEATURE_TAG_MMTEL_VIDEO);
    }

    @Override // com.sec.internal.ims.util.IThumbnailTool
    public String getThumbSavedDirectory() {
        Context context;
        if (this.mSavedDir == null && (context = this.mContext) != null) {
            File file = new File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES).getPath(), SUBDIR_NAME);
            if (file.isDirectory() || file.mkdirs()) {
                this.mSavedDir = file.getAbsolutePath();
            }
            Log.d(LOG_TAG, "getThumbSavedDirectory: " + this.mSavedDir);
        }
        return this.mSavedDir;
    }

    @Override // com.sec.internal.ims.util.IThumbnailTool
    public void createThumb(String str, String str2, long j, Message message) {
        ThumbnailInfor thumbnailInfor = new ThumbnailInfor();
        thumbnailInfor.originalFilePath = str;
        thumbnailInfor.destFilePath = str2;
        thumbnailInfor.maxSize = j;
        thumbnailInfor.callback = message;
        sendMessage(obtainMessage(1000, thumbnailInfor));
    }

    @Override // com.sec.internal.ims.util.IThumbnailTool
    public void createThumbFromImage(String str, String str2, long j, Message message) {
        ThumbnailInfor thumbnailInfor = new ThumbnailInfor();
        thumbnailInfor.originalFilePath = str;
        thumbnailInfor.destFilePath = str2;
        thumbnailInfor.maxSize = j;
        thumbnailInfor.callback = message;
        sendMessage(obtainMessage(1001, thumbnailInfor));
    }

    @Override // com.sec.internal.ims.util.IThumbnailTool
    public void createThumbFromImage(String str, String str2, long j, int i, int i2, Message message) {
        ThumbnailInfor thumbnailInfor = new ThumbnailInfor();
        thumbnailInfor.originalFilePath = str;
        thumbnailInfor.destFilePath = str2;
        thumbnailInfor.maxSize = j;
        thumbnailInfor.callback = message;
        thumbnailInfor.width = i;
        thumbnailInfor.height = i2;
        sendMessage(obtainMessage(1002, thumbnailInfor));
    }

    @Override // com.sec.internal.ims.util.IThumbnailTool
    public void createThumbFromVideo(String str, String str2, long j, Message message) {
        ThumbnailInfor thumbnailInfor = new ThumbnailInfor();
        thumbnailInfor.originalFilePath = str;
        thumbnailInfor.destFilePath = str2;
        thumbnailInfor.maxSize = j;
        thumbnailInfor.callback = message;
        sendMessage(obtainMessage(1003, thumbnailInfor));
    }

    @Override // com.sec.internal.ims.util.IThumbnailTool
    public void createThumbFromVideo(String str, String str2, long j, int i, int i2, Message message) {
        ThumbnailInfor thumbnailInfor = new ThumbnailInfor();
        thumbnailInfor.originalFilePath = str;
        thumbnailInfor.destFilePath = str2;
        thumbnailInfor.maxSize = j;
        thumbnailInfor.callback = message;
        thumbnailInfor.width = i;
        thumbnailInfor.height = i2;
        sendMessage(obtainMessage(1004, thumbnailInfor));
    }

    public String createCopyPaste(File file, File file2) {
        if (file2 == null) {
            Log.e(LOG_TAG, "destinationDirectory == null");
            return null;
        }
        File uniqueFile = UniqueFilePathResolver.getUniqueFile(file.getName(), file2);
        Log.d(LOG_TAG, "createCopyPaste:" + uniqueFile);
        FileUtils.copyFile(file, uniqueFile);
        return uniqueFile.getPath();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String createThumbFromImage(java.io.File r22, java.io.File r23, long r24, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.util.ThumbnailTool.createThumbFromImage(java.io.File, java.io.File, long, int, int):java.lang.String");
    }

    private Bitmap extractBitmapFromImage(File file, int i) throws IOException {
        return this.mBitmapExtractor.extractFromImage(file, i);
    }

    private String createThumbFromStillPicture(File file, File file2, int i, long j, long j2, ICompressionDescriptor iCompressionDescriptor) {
        try {
            try {
                return createThumbFromPicture(file, file2, j, j2, Pair.create(extractBitmapFromImage(file, i), Integer.valueOf(i)), iCompressionDescriptor);
            } catch (IThumbnailTool.ThumbCreationException e) {
                e.printStackTrace();
                return null;
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private Pair<Integer, Integer> getImageDimensions(File file) {
        return this.mImageDimensionsExtractor.extract(file);
    }

    private IContentTypeContext getContentTypeContext(File file) {
        String fileExtension = getFileExtension(file.getName());
        if (fileExtension == null) {
            Log.e(LOG_TAG, "ext == null");
            return null;
        }
        String translate = ContentTypeTranslator.translate(fileExtension);
        Log.d(LOG_TAG, "getStillContentTypeContext: mime=" + translate);
        return this.mContentTypeContextCreator.getContextByMime(translate);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x015e A[LOOP:0: B:14:0x0050->B:26:0x015e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String createThumbFromPicture(java.io.File r19, java.io.File r20, long r21, long r23, android.util.Pair<android.graphics.Bitmap, java.lang.Integer> r25, com.sec.internal.helper.picturetool.ICompressionDescriptor r26) throws java.io.IOException, com.sec.internal.ims.util.IThumbnailTool.ThumbCreationException {
        /*
            Method dump skipped, instructions count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.util.ThumbnailTool.createThumbFromPicture(java.io.File, java.io.File, long, long, android.util.Pair, com.sec.internal.helper.picturetool.ICompressionDescriptor):java.lang.String");
    }

    private void saveBitmapToFile(Bitmap bitmap, File file, int i, Bitmap.CompressFormat compressFormat, Pair<Integer, Integer> pair) throws IOException, IThumbnailTool.ThumbCreationException {
        Closeable closeable = null;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, ((Integer) pair.first).intValue(), ((Integer) pair.second).intValue(), false);
                createScaledBitmap.compress(compressFormat, i, fileOutputStream);
                if (!createScaledBitmap.sameAs(bitmap)) {
                    createScaledBitmap.recycle();
                }
                fileOutputStream.flush();
                closeStream(fileOutputStream);
            } catch (Throwable th) {
                th = th;
                closeable = fileOutputStream;
                closeStream(closeable);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void saveBitmapToFile(Bitmap bitmap, File file, int i, Bitmap.CompressFormat compressFormat) throws IOException, IThumbnailTool.ThumbCreationException {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
        } catch (Throwable th) {
            th = th;
        }
        try {
            bitmap.compress(compressFormat, i, fileOutputStream);
            fileOutputStream.flush();
            closeStream(fileOutputStream);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            closeStream(fileOutputStream2);
            throw th;
        }
    }

    private void closeStream(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                throw new IOException("Can't close stream: e=" + e);
            }
        }
    }

    private String createThumbFromVideo(File file, File file2, long j, int i, int i2) {
        try {
            return createThumbFromMotionPicture(file, file2, j, i, i2);
        } catch (IThumbnailTool.ThumbCreationException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String createThumbFromMotionPicture(File file, File file2, long j, int i, int i2) throws IOException, IThumbnailTool.ThumbCreationException {
        Context context = this.mContext;
        File cacheDir = context != null ? context.getCacheDir() : null;
        if (cacheDir == null) {
            Log.e(LOG_TAG, "file == null");
            return null;
        }
        IVideoPreviewExtractor.IVideoPreview extract = this.mVideoPreviewExtractor.extract(file, cacheDir);
        File file3 = extract.getFile();
        Bitmap extractFromImage = this.mBitmapExtractor.extractFromImage(file3, 1);
        Pair<Integer, Integer> dimensions = extract.getDimensions();
        long size = extract.getSize();
        try {
            String createThumbFromMotionPicture = createThumbFromMotionPicture(file3, file2, size, j, extractFromImage, new FullCompressionDescriptor(size, ((Integer) dimensions.first).intValue(), ((Integer) dimensions.second).intValue(), j, i, i2, this.mPanicDescriptor));
            extractFromImage.recycle();
            if (!file3.delete()) {
                Log.e(LOG_TAG, "tmpFile.delete() error");
            }
            return createThumbFromMotionPicture;
        } finally {
        }
    }

    private String createThumbFromMotionPicture(File file, File file2, long j, long j2, Bitmap bitmap, ICompressionDescriptor iCompressionDescriptor) throws IOException, IThumbnailTool.ThumbCreationException {
        return createThumbFromPicture(file, file2, j, j2, Pair.create(bitmap, Integer.valueOf(getReadScale(j, j2))), iCompressionDescriptor);
    }

    private int getReadScale(long j, long j2) {
        return ReadScaleCalculator.calculate(j, j2);
    }
}
