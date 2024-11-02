package com.android.systemui.screenshot;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.MediaStore;
import android.util.Log;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.exifinterface.media.ExifInterface;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.screenshot.ImageExporter;
import com.android.systemui.screenshot.sep.SmartClipDataExtractor;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import com.samsung.android.media.SemExtendedFormat;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImageExporter {
    public static String mCapturedAppInfo;
    public static int mHeight;
    public static String mImageDisplayName;
    public static String mImageFileName;
    public static String mImageFilePath;
    public static String mImageFileRelativePath;
    public static long mImageTime;
    public static String mMimeType;
    public static long mSecDate;
    public static long mSize;
    public static String mVolumeName;
    public static int mWidth;
    public static SmartClipDataExtractor.WebData screenshotsWebData;
    public final FeatureFlags mFlags;
    public final ContentResolver mResolver;
    public Bitmap.CompressFormat mCompressFormat = Bitmap.CompressFormat.PNG;
    public final int mQuality = 100;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.screenshot.ImageExporter$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$CompressFormat;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            $SwitchMap$android$graphics$Bitmap$CompressFormat = iArr;
            try {
                iArr[Bitmap.CompressFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP_LOSSLESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP_LOSSY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ImageExportException extends IOException {
        public ImageExportException(String str) {
            super(str);
        }

        public ImageExportException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Result {
        public String fileName;
        public Bitmap.CompressFormat format;
        public boolean published;
        public UUID requestId;
        public long timestamp;
        public Uri uri;

        public final String toString() {
            return "Result{uri=" + this.uri + ", requestId=" + this.requestId + ", fileName='" + this.fileName + "', timestamp=" + this.timestamp + ", format=" + this.format + ", published=" + this.published + '}';
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Task {
        public final Bitmap mBitmap;
        public final ZonedDateTime mCaptureTime;
        public final String mFileName;
        public final FeatureFlags mFlags;
        public final Bitmap.CompressFormat mFormat;
        public final UserHandle mOwner;
        public final boolean mPublish;
        public final int mQuality;
        public final UUID mRequestId;
        public final ContentResolver mResolver;

        public Task(ContentResolver contentResolver, UUID uuid, Bitmap bitmap, ZonedDateTime zonedDateTime, Bitmap.CompressFormat compressFormat, int i, boolean z, UserHandle userHandle, FeatureFlags featureFlags) {
            this.mResolver = contentResolver;
            this.mRequestId = uuid;
            this.mBitmap = bitmap;
            this.mCaptureTime = zonedDateTime;
            this.mFormat = compressFormat;
            this.mQuality = i;
            this.mOwner = userHandle;
            this.mFileName = ImageExporter.createFilename(zonedDateTime, compressFormat);
            this.mPublish = z;
            this.mFlags = featureFlags;
        }

        public final Result execute() {
            Uri uri;
            Bitmap.CompressFormat compressFormat = this.mFormat;
            Bitmap bitmap = this.mBitmap;
            ContentResolver contentResolver = this.mResolver;
            Trace.beginSection("ImageExporter_execute");
            Result result = new Result();
            try {
                try {
                    uri = ImageExporter.m1341$$Nest$smsemCreateEntry(contentResolver, this.mOwner);
                    try {
                        ImageExporter.m1342$$Nest$smthrowIfInterrupted();
                        ImageExporter.m1344$$Nest$smwriteImage(contentResolver, bitmap, compressFormat, this.mQuality, uri);
                        ImageExporter.m1342$$Nest$smthrowIfInterrupted();
                        ImageExporter.m1343$$Nest$smwriteExif(this.mResolver, uri, this.mRequestId, bitmap.getWidth(), bitmap.getHeight(), this.mCaptureTime);
                        ImageExporter.m1342$$Nest$smthrowIfInterrupted();
                        if (this.mPublish) {
                            ImageExporter.m1340$$Nest$smpublishEntry(contentResolver, uri);
                            result.published = true;
                        }
                        result.timestamp = this.mCaptureTime.toInstant().toEpochMilli();
                        result.requestId = this.mRequestId;
                        result.uri = uri;
                        result.fileName = this.mFileName;
                        result.format = compressFormat;
                        return result;
                    } catch (ImageExportException e) {
                        e = e;
                        if (uri != null) {
                            contentResolver.delete(uri, null);
                        }
                        throw e;
                    }
                } finally {
                    Trace.endSection();
                }
            } catch (ImageExportException e2) {
                e = e2;
                uri = null;
            }
        }

        public final String toString() {
            return "export [" + this.mBitmap + "] to [" + this.mFormat + "] at quality " + this.mQuality;
        }
    }

    /* renamed from: -$$Nest$smpublishEntry, reason: not valid java name */
    public static void m1340$$Nest$smpublishEntry(ContentResolver contentResolver, Uri uri) {
        Trace.beginSection("ImageExporter_publishEntry");
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_pending", (Integer) 0);
            contentValues.putNull("date_expires");
            if (contentResolver.update(uri, contentValues, null) >= 1) {
            } else {
                throw new ImageExportException("Failed to publish entry. ContentResolver#update reported no rows updated.");
            }
        } finally {
            Trace.endSection();
        }
    }

    /* renamed from: -$$Nest$smsemCreateEntry, reason: not valid java name */
    public static Uri m1341$$Nest$smsemCreateEntry(ContentResolver contentResolver, UserHandle userHandle) {
        Trace.beginSection("ImageExporter_semCreateEntry");
        try {
            ContentValues semCreateMetadata = semCreateMetadata();
            SmartClipDataExtractor.WebData webData = screenshotsWebData;
            if (webData != null) {
                semCreateMetadata.put("captured_url", webData.mUrl);
                semCreateMetadata.put("captured_app", screenshotsWebData.mAppPkgName);
            }
            Uri insert = contentResolver.insert(Uri.parse("content://secmedia/media"), semCreateMetadata);
            if (screenshotsWebData != null) {
                semCreateMetadata.remove("captured_url");
                semCreateMetadata.remove("captured_app");
            }
            if (insert != null) {
                semCreateMetadata.put("group_id", Long.valueOf(ContentUris.parseId(insert)));
            }
            semCreateMetadata.remove("_data");
            semCreateMetadata.put("relative_path", mImageFileRelativePath);
            Uri insert2 = contentResolver.insert(ContentProvider.maybeAddUserId(MediaStore.Images.Media.getContentUri(mVolumeName), userHandle.getIdentifier()), semCreateMetadata);
            if (insert2 != null) {
                Log.d("Screenshot", "Inserted new URI: " + insert2);
                return insert2;
            }
            throw new ImageExportException("ContentResolver#insert returned null.");
        } finally {
            Trace.endSection();
        }
    }

    /* renamed from: -$$Nest$smthrowIfInterrupted, reason: not valid java name */
    public static void m1342$$Nest$smthrowIfInterrupted() {
        if (!Thread.currentThread().isInterrupted()) {
        } else {
            throw new InterruptedException();
        }
    }

    /* renamed from: -$$Nest$smwriteExif, reason: not valid java name */
    public static void m1343$$Nest$smwriteExif(ContentResolver contentResolver, Uri uri, UUID uuid, int i, int i2, ZonedDateTime zonedDateTime) {
        Trace.beginSection("ImageExporter_writeExif");
        try {
            try {
                ParcelFileDescriptor openFile = contentResolver.openFile(uri, "rw", null);
                if (openFile != null) {
                    try {
                        ExifInterface exifInterface = new ExifInterface(openFile.getFileDescriptor());
                        updateExifAttributes(exifInterface, uuid, i, i2, zonedDateTime);
                        try {
                            exifInterface.saveAttributes();
                            SemExtendedFormat.addData(openFile, "Samsung_Capture_Info", "Screenshot".getBytes(StandardCharsets.UTF_8), 3153, 1);
                            SemExtendedFormat.addData(openFile, "Captured_App_Info", mCapturedAppInfo.getBytes(StandardCharsets.UTF_8), 3489, 1);
                            FileUtils.closeQuietly(openFile);
                            Trace.endSection();
                            return;
                        } catch (IOException e) {
                            throw new ImageExportException("ExifInterface threw an exception writing to the file descriptor.", e);
                        }
                    } catch (IOException e2) {
                        throw new ImageExportException("ExifInterface threw an exception reading from the file descriptor.", e2);
                    }
                }
                throw new ImageExportException("ContentResolver#openFile returned null.");
            } catch (FileNotFoundException e3) {
                throw new ImageExportException("ContentResolver#openFile threw an exception.", e3);
            }
        } catch (Throwable th) {
            FileUtils.closeQuietly((AutoCloseable) null);
            Trace.endSection();
            throw th;
        }
    }

    /* renamed from: -$$Nest$smwriteImage, reason: not valid java name */
    public static void m1344$$Nest$smwriteImage(ContentResolver contentResolver, Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i, Uri uri) {
        Trace.beginSection("ImageExporter_writeImage");
        try {
            try {
                OutputStream openOutputStream = contentResolver.openOutputStream(uri);
                try {
                    SystemClock.elapsedRealtime();
                    if (bitmap.compress(compressFormat, i, openOutputStream)) {
                        if (openOutputStream != null) {
                            openOutputStream.close();
                        }
                        return;
                    }
                    throw new ImageExportException("Bitmap.compress returned false. (Failure unknown)");
                } catch (Throwable th) {
                    if (openOutputStream != null) {
                        try {
                            openOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                throw new ImageExportException("ContentResolver#openOutputStream threw an exception.", e);
            }
        } finally {
            Trace.endSection();
        }
    }

    static {
        Duration.ofHours(24L);
        String str = Environment.DIRECTORY_DCIM;
        String str2 = File.separator;
        String str3 = Environment.DIRECTORY_SCREENSHOTS;
    }

    public ImageExporter(ContentResolver contentResolver, FeatureFlags featureFlags) {
        this.mResolver = contentResolver;
        this.mFlags = featureFlags;
    }

    public static String createFilename(ZonedDateTime zonedDateTime, Bitmap.CompressFormat compressFormat) {
        String str;
        Object[] objArr = new Object[2];
        objArr[0] = zonedDateTime;
        int i = AnonymousClass1.$SwitchMap$android$graphics$Bitmap$CompressFormat[compressFormat.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3 && i != 4 && i != 5) {
                    throw new IllegalArgumentException("Unknown CompressFormat!");
                }
                str = "webp";
            } else {
                str = "png";
            }
        } else {
            str = "jpg";
        }
        objArr[1] = str;
        return String.format("Screenshot_%1$tY%<tm%<td-%<tH%<tM%<tS.%2$s", objArr);
    }

    public static ContentValues semCreateMetadata() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", mImageFilePath);
        contentValues.put(UniversalCredentialUtil.AGENT_TITLE, mImageDisplayName);
        contentValues.put("_display_name", mImageFileName);
        contentValues.put("datetaken", Long.valueOf(mImageTime));
        contentValues.put("date_added", Long.valueOf(mSecDate));
        contentValues.put("date_modified", Long.valueOf(mSecDate));
        contentValues.put("mime_type", mMimeType);
        contentValues.put("width", Integer.valueOf(mWidth));
        contentValues.put("height", Integer.valueOf(mHeight));
        contentValues.put("_size", Long.valueOf(mSize));
        contentValues.put("media_type", (Integer) 1);
        contentValues.put("is_pending", (Integer) 1);
        return contentValues;
    }

    public static void updateExifAttributes(ExifInterface exifInterface, UUID uuid, int i, int i2, ZonedDateTime zonedDateTime) {
        exifInterface.setAttribute("ImageUniqueID", uuid.toString());
        exifInterface.setAttribute("Software", "Android " + Build.DISPLAY);
        exifInterface.setAttribute("ImageWidth", Integer.toString(i));
        exifInterface.setAttribute("ImageLength", Integer.toString(i2));
        String format = DateTimeFormatter.ofPattern("yyyy:MM:dd HH:mm:ss").format(zonedDateTime);
        String format2 = DateTimeFormatter.ofPattern("SSS").format(zonedDateTime);
        String format3 = DateTimeFormatter.ofPattern("xxx").format(zonedDateTime);
        exifInterface.setAttribute("DateTimeOriginal", format);
        exifInterface.setAttribute("SubSecTimeOriginal", format2);
        exifInterface.setAttribute("OffsetTimeOriginal", format3);
    }

    public final CallbackToFutureAdapter.SafeFuture export(final Executor executor, UUID uuid, Bitmap bitmap, ZonedDateTime zonedDateTime, UserHandle userHandle) {
        final Task task = new Task(this.mResolver, uuid, bitmap, zonedDateTime, this.mCompressFormat, this.mQuality, true, userHandle, this.mFlags);
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.android.systemui.screenshot.ImageExporter$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(final CallbackToFutureAdapter.Completer completer) {
                final ImageExporter.Task task2 = task;
                executor.execute(new Runnable() { // from class: com.android.systemui.screenshot.ImageExporter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallbackToFutureAdapter.Completer completer2 = CallbackToFutureAdapter.Completer.this;
                        try {
                            completer2.set(task2.execute());
                        } catch (ImageExporter.ImageExportException | InterruptedException e) {
                            completer2.setException(e);
                        }
                    }
                });
                return task2;
            }
        });
    }
}
