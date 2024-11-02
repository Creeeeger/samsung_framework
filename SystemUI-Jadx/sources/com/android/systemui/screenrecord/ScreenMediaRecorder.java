package com.android.systemui.screenrecord;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.display.VirtualDisplay;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaMuxer;
import android.media.MediaRecorder;
import android.media.ThumbnailUtils;
import android.media.projection.IMediaProjection;
import android.media.projection.IMediaProjectionManager;
import android.media.projection.MediaProjection;
import android.net.Uri;
import android.os.Handler;
import android.os.ServiceManager;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import android.view.WindowManager;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.media.MediaProjectionCaptureTarget;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenMediaRecorder extends MediaProjection.Callback {
    public ScreenInternalAudioRecorder mAudio;
    public final ScreenRecordingAudioSource mAudioSource;
    public final MediaProjectionCaptureTarget mCaptureRegion;
    public final Context mContext;
    public final Handler mHandler;
    public Surface mInputSurface;
    public final ScreenMediaRecorderListener mListener;
    public MediaProjection mMediaProjection;
    public MediaRecorder mMediaRecorder;
    public File mTempAudioFile;
    public File mTempVideoFile;
    public final int mUser;
    public VirtualDisplay mVirtualDisplay;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Closer implements Closeable {
        public final List mCloseables;

        public /* synthetic */ Closer(int i) {
            this();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            Throwable th = null;
            for (int i = 0; i < ((ArrayList) this.mCloseables).size(); i++) {
                try {
                    ((Closeable) ((ArrayList) this.mCloseables).get(i)).close();
                } catch (Throwable th2) {
                    if (th == null) {
                        th = th2;
                    } else {
                        th2.printStackTrace();
                    }
                }
            }
            if (th != null) {
                if (!(th instanceof IOException)) {
                    if (th instanceof RuntimeException) {
                        throw ((RuntimeException) th);
                    }
                    throw ((Error) th);
                }
                throw ((IOException) th);
            }
        }

        public final void register(Closeable closeable) {
            ((ArrayList) this.mCloseables).add(closeable);
        }

        private Closer() {
            this.mCloseables = new ArrayList();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SavedRecording {
        public final Bitmap mThumbnailBitmap;
        public final Uri mUri;

        public SavedRecording(ScreenMediaRecorder screenMediaRecorder, Uri uri, File file, Size size) {
            this.mUri = uri;
            try {
                this.mThumbnailBitmap = ThumbnailUtils.createVideoThumbnail(file, size, null);
            } catch (IOException e) {
                Log.e("ScreenMediaRecorder", "Error creating thumbnail", e);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ScreenMediaRecorderListener {
    }

    public ScreenMediaRecorder(Context context, Handler handler, int i, ScreenRecordingAudioSource screenRecordingAudioSource, MediaProjectionCaptureTarget mediaProjectionCaptureTarget, ScreenMediaRecorderListener screenMediaRecorderListener) {
        this.mContext = context;
        this.mHandler = handler;
        this.mUser = i;
        this.mCaptureRegion = mediaProjectionCaptureTarget;
        this.mListener = screenMediaRecorderListener;
        this.mAudioSource = screenRecordingAudioSource;
    }

    public final void end() {
        final int i = 0;
        Closer closer = new Closer(i);
        final MediaRecorder mediaRecorder = this.mMediaRecorder;
        Objects.requireNonNull(mediaRecorder);
        closer.register(new Closeable() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder$$ExternalSyntheticLambda0
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                switch (i) {
                    case 0:
                        mediaRecorder.stop();
                        return;
                    default:
                        mediaRecorder.release();
                        return;
                }
            }
        });
        final MediaRecorder mediaRecorder2 = this.mMediaRecorder;
        Objects.requireNonNull(mediaRecorder2);
        final int i2 = 1;
        closer.register(new Closeable() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder$$ExternalSyntheticLambda0
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                switch (i2) {
                    case 0:
                        mediaRecorder2.stop();
                        return;
                    default:
                        mediaRecorder2.release();
                        return;
                }
            }
        });
        final Surface surface = this.mInputSurface;
        Objects.requireNonNull(surface);
        closer.register(new Closeable() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder$$ExternalSyntheticLambda1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                switch (i) {
                    case 0:
                        ((Surface) surface).release();
                        return;
                    case 1:
                        ((VirtualDisplay) surface).release();
                        return;
                    case 2:
                        ((MediaProjection) surface).stop();
                        return;
                    default:
                        ScreenMediaRecorder screenMediaRecorder = (ScreenMediaRecorder) surface;
                        ScreenRecordingAudioSource screenRecordingAudioSource = screenMediaRecorder.mAudioSource;
                        if (screenRecordingAudioSource == ScreenRecordingAudioSource.INTERNAL || screenRecordingAudioSource == ScreenRecordingAudioSource.MIC_AND_INTERNAL) {
                            ScreenInternalAudioRecorder screenInternalAudioRecorder = screenMediaRecorder.mAudio;
                            screenInternalAudioRecorder.mAudioRecord.stop();
                            boolean z = screenInternalAudioRecorder.mMic;
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.stop();
                            }
                            screenInternalAudioRecorder.mAudioRecord.release();
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.release();
                            }
                            try {
                                screenInternalAudioRecorder.mThread.join();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            screenInternalAudioRecorder.mCodec.stop();
                            screenInternalAudioRecorder.mCodec.release();
                            MediaMuxer mediaMuxer = screenInternalAudioRecorder.mMuxer;
                            mediaMuxer.stop();
                            mediaMuxer.release();
                            screenInternalAudioRecorder.mThread = null;
                            screenMediaRecorder.mAudio = null;
                            return;
                        }
                        return;
                }
            }
        });
        final VirtualDisplay virtualDisplay = this.mVirtualDisplay;
        Objects.requireNonNull(virtualDisplay);
        closer.register(new Closeable() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder$$ExternalSyntheticLambda1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                switch (i2) {
                    case 0:
                        ((Surface) virtualDisplay).release();
                        return;
                    case 1:
                        ((VirtualDisplay) virtualDisplay).release();
                        return;
                    case 2:
                        ((MediaProjection) virtualDisplay).stop();
                        return;
                    default:
                        ScreenMediaRecorder screenMediaRecorder = (ScreenMediaRecorder) virtualDisplay;
                        ScreenRecordingAudioSource screenRecordingAudioSource = screenMediaRecorder.mAudioSource;
                        if (screenRecordingAudioSource == ScreenRecordingAudioSource.INTERNAL || screenRecordingAudioSource == ScreenRecordingAudioSource.MIC_AND_INTERNAL) {
                            ScreenInternalAudioRecorder screenInternalAudioRecorder = screenMediaRecorder.mAudio;
                            screenInternalAudioRecorder.mAudioRecord.stop();
                            boolean z = screenInternalAudioRecorder.mMic;
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.stop();
                            }
                            screenInternalAudioRecorder.mAudioRecord.release();
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.release();
                            }
                            try {
                                screenInternalAudioRecorder.mThread.join();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            screenInternalAudioRecorder.mCodec.stop();
                            screenInternalAudioRecorder.mCodec.release();
                            MediaMuxer mediaMuxer = screenInternalAudioRecorder.mMuxer;
                            mediaMuxer.stop();
                            mediaMuxer.release();
                            screenInternalAudioRecorder.mThread = null;
                            screenMediaRecorder.mAudio = null;
                            return;
                        }
                        return;
                }
            }
        });
        final MediaProjection mediaProjection = this.mMediaProjection;
        Objects.requireNonNull(mediaProjection);
        final int i3 = 2;
        closer.register(new Closeable() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder$$ExternalSyntheticLambda1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                switch (i3) {
                    case 0:
                        ((Surface) mediaProjection).release();
                        return;
                    case 1:
                        ((VirtualDisplay) mediaProjection).release();
                        return;
                    case 2:
                        ((MediaProjection) mediaProjection).stop();
                        return;
                    default:
                        ScreenMediaRecorder screenMediaRecorder = (ScreenMediaRecorder) mediaProjection;
                        ScreenRecordingAudioSource screenRecordingAudioSource = screenMediaRecorder.mAudioSource;
                        if (screenRecordingAudioSource == ScreenRecordingAudioSource.INTERNAL || screenRecordingAudioSource == ScreenRecordingAudioSource.MIC_AND_INTERNAL) {
                            ScreenInternalAudioRecorder screenInternalAudioRecorder = screenMediaRecorder.mAudio;
                            screenInternalAudioRecorder.mAudioRecord.stop();
                            boolean z = screenInternalAudioRecorder.mMic;
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.stop();
                            }
                            screenInternalAudioRecorder.mAudioRecord.release();
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.release();
                            }
                            try {
                                screenInternalAudioRecorder.mThread.join();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            screenInternalAudioRecorder.mCodec.stop();
                            screenInternalAudioRecorder.mCodec.release();
                            MediaMuxer mediaMuxer = screenInternalAudioRecorder.mMuxer;
                            mediaMuxer.stop();
                            mediaMuxer.release();
                            screenInternalAudioRecorder.mThread = null;
                            screenMediaRecorder.mAudio = null;
                            return;
                        }
                        return;
                }
            }
        });
        final int i4 = 3;
        closer.register(new Closeable() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder$$ExternalSyntheticLambda1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                switch (i4) {
                    case 0:
                        ((Surface) this).release();
                        return;
                    case 1:
                        ((VirtualDisplay) this).release();
                        return;
                    case 2:
                        ((MediaProjection) this).stop();
                        return;
                    default:
                        ScreenMediaRecorder screenMediaRecorder = (ScreenMediaRecorder) this;
                        ScreenRecordingAudioSource screenRecordingAudioSource = screenMediaRecorder.mAudioSource;
                        if (screenRecordingAudioSource == ScreenRecordingAudioSource.INTERNAL || screenRecordingAudioSource == ScreenRecordingAudioSource.MIC_AND_INTERNAL) {
                            ScreenInternalAudioRecorder screenInternalAudioRecorder = screenMediaRecorder.mAudio;
                            screenInternalAudioRecorder.mAudioRecord.stop();
                            boolean z = screenInternalAudioRecorder.mMic;
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.stop();
                            }
                            screenInternalAudioRecorder.mAudioRecord.release();
                            if (z) {
                                screenInternalAudioRecorder.mAudioRecordMic.release();
                            }
                            try {
                                screenInternalAudioRecorder.mThread.join();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            screenInternalAudioRecorder.mCodec.stop();
                            screenInternalAudioRecorder.mCodec.release();
                            MediaMuxer mediaMuxer = screenInternalAudioRecorder.mMuxer;
                            mediaMuxer.stop();
                            mediaMuxer.release();
                            screenInternalAudioRecorder.mThread = null;
                            screenMediaRecorder.mAudio = null;
                            return;
                        }
                        return;
                }
            }
        });
        closer.close();
        this.mMediaRecorder = null;
        this.mMediaProjection = null;
        Log.d("ScreenMediaRecorder", "end recording");
    }

    @Override // android.media.projection.MediaProjection.Callback
    public final void onStop() {
        boolean z;
        Log.d("ScreenMediaRecorder", "The system notified about stopping the projection");
        RecordingService recordingService = (RecordingService) this.mListener;
        RecordingController recordingController = recordingService.mController;
        synchronized (recordingController) {
            z = recordingController.mIsRecording;
        }
        if (z) {
            Log.d("RecordingService", "Stopping recording because the system requested the stop");
            recordingService.stopService(-1);
        }
    }

    public final SavedRecording save() {
        String format = new SimpleDateFormat("'screen-'yyyyMMdd-HHmmss'.mp4'").format(new Date());
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", format);
        contentValues.put("mime_type", "video/mp4");
        contentValues.put("date_added", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Uri insert = contentResolver.insert(MediaStore.Video.Media.getContentUri("external_primary"), contentValues);
        Log.d("ScreenMediaRecorder", insert.toString());
        ScreenRecordingAudioSource screenRecordingAudioSource = this.mAudioSource;
        if (screenRecordingAudioSource == ScreenRecordingAudioSource.MIC_AND_INTERNAL || screenRecordingAudioSource == ScreenRecordingAudioSource.INTERNAL) {
            try {
                Log.d("ScreenMediaRecorder", "muxing recording");
                File createTempFile = File.createTempFile("temp", ".mp4", this.mContext.getCacheDir());
                new ScreenRecordingMuxer(0, createTempFile.getAbsolutePath(), this.mTempVideoFile.getAbsolutePath(), this.mTempAudioFile.getAbsolutePath()).mux();
                this.mTempVideoFile.delete();
                this.mTempVideoFile = createTempFile;
            } catch (IOException e) {
                Log.e("ScreenMediaRecorder", "muxing recording " + e.getMessage());
                e.printStackTrace();
            }
        }
        OutputStream openOutputStream = contentResolver.openOutputStream(insert, "w");
        Files.copy(this.mTempVideoFile.toPath(), openOutputStream);
        openOutputStream.close();
        File file = this.mTempAudioFile;
        if (file != null) {
            file.delete();
        }
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        SavedRecording savedRecording = new SavedRecording(this, insert, this.mTempVideoFile, new Size(displayMetrics.widthPixels, displayMetrics.heightPixels));
        this.mTempVideoFile.delete();
        return savedRecording;
    }

    public final void start() {
        int i;
        int i2;
        int[] iArr;
        Log.d("ScreenMediaRecorder", "start recording");
        boolean z = false;
        IMediaProjection asInterface = IMediaProjection.Stub.asInterface(IMediaProjectionManager.Stub.asInterface(ServiceManager.getService("media_projection")).createProjection(this.mUser, this.mContext.getPackageName(), 0, false).asBinder());
        MediaProjectionCaptureTarget mediaProjectionCaptureTarget = this.mCaptureRegion;
        if (mediaProjectionCaptureTarget != null) {
            asInterface.setLaunchCookie(mediaProjectionCaptureTarget.launchCookie);
        }
        MediaProjection mediaProjection = new MediaProjection(this.mContext, asInterface);
        this.mMediaProjection = mediaProjection;
        mediaProjection.registerCallback(this, this.mHandler);
        File cacheDir = this.mContext.getCacheDir();
        cacheDir.mkdirs();
        this.mTempVideoFile = File.createTempFile("temp", ".mp4", cacheDir);
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.mMediaRecorder = mediaRecorder;
        ScreenRecordingAudioSource screenRecordingAudioSource = this.mAudioSource;
        ScreenRecordingAudioSource screenRecordingAudioSource2 = ScreenRecordingAudioSource.MIC;
        if (screenRecordingAudioSource == screenRecordingAudioSource2) {
            mediaRecorder.setAudioSource(0);
        }
        this.mMediaRecorder.setVideoSource(2);
        this.mMediaRecorder.setOutputFormat(2);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        int refreshRate = (int) windowManager.getDefaultDisplay().getRefreshRate();
        int i3 = displayMetrics.widthPixels;
        int i4 = displayMetrics.heightPixels;
        MediaCodec createDecoderByType = MediaCodec.createDecoderByType("video/avc");
        MediaCodecInfo.VideoCapabilities videoCapabilities = createDecoderByType.getCodecInfo().getCapabilitiesForType("video/avc").getVideoCapabilities();
        createDecoderByType.release();
        int intValue = videoCapabilities.getSupportedWidths().getUpper().intValue();
        int intValue2 = videoCapabilities.getSupportedHeights().getUpper().intValue();
        if (i3 % videoCapabilities.getWidthAlignment() != 0) {
            i = i3 - (i3 % videoCapabilities.getWidthAlignment());
        } else {
            i = i3;
        }
        if (i4 % videoCapabilities.getHeightAlignment() != 0) {
            i2 = i4 - (i4 % videoCapabilities.getHeightAlignment());
        } else {
            i2 = i4;
        }
        if (intValue >= i && intValue2 >= i2 && videoCapabilities.isSizeSupported(i, i2)) {
            int intValue3 = videoCapabilities.getSupportedFrameRatesFor(i, i2).getUpper().intValue();
            if (intValue3 < refreshRate) {
                refreshRate = intValue3;
            }
            ListPopupWindow$$ExternalSyntheticOutline0.m("Screen size supported at rate ", refreshRate, "ScreenMediaRecorder");
            iArr = new int[]{i, i2, refreshRate};
        } else {
            double d = i3;
            double d2 = i4;
            double min = Math.min(intValue / d, intValue2 / d2);
            int i5 = (int) (d * min);
            int i6 = (int) (d2 * min);
            if (i5 % videoCapabilities.getWidthAlignment() != 0) {
                i5 -= i5 % videoCapabilities.getWidthAlignment();
            }
            if (i6 % videoCapabilities.getHeightAlignment() != 0) {
                i6 -= i6 % videoCapabilities.getHeightAlignment();
            }
            int intValue4 = videoCapabilities.getSupportedFrameRatesFor(i5, i6).getUpper().intValue();
            if (intValue4 < refreshRate) {
                refreshRate = intValue4;
            }
            Log.d("ScreenMediaRecorder", "Resized by " + min + ": " + i5 + ", " + i6 + ", " + refreshRate);
            iArr = new int[]{i5, i6, refreshRate};
            z = false;
        }
        int i7 = iArr[z ? 1 : 0];
        int i8 = iArr[1];
        int i9 = iArr[2];
        this.mMediaRecorder.setVideoEncoder(2);
        this.mMediaRecorder.setVideoEncodingProfileLevel(8, 256);
        this.mMediaRecorder.setVideoSize(i7, i8);
        this.mMediaRecorder.setVideoFrameRate(i9);
        this.mMediaRecorder.setVideoEncodingBitRate((((i7 * i8) * i9) / 30) * 6);
        this.mMediaRecorder.setMaxDuration(3600000);
        this.mMediaRecorder.setMaxFileSize(5000000000L);
        if (this.mAudioSource == screenRecordingAudioSource2) {
            this.mMediaRecorder.setAudioEncoder(4);
            this.mMediaRecorder.setAudioChannels(1);
            this.mMediaRecorder.setAudioEncodingBitRate(196000);
            this.mMediaRecorder.setAudioSamplingRate(44100);
        }
        this.mMediaRecorder.setOutputFile(this.mTempVideoFile);
        this.mMediaRecorder.prepare();
        Surface surface = this.mMediaRecorder.getSurface();
        this.mInputSurface = surface;
        this.mVirtualDisplay = this.mMediaProjection.createVirtualDisplay("Recording Display", i7, i8, displayMetrics.densityDpi, 16, surface, new VirtualDisplay.Callback() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder.1
            @Override // android.hardware.display.VirtualDisplay.Callback
            public final void onStopped() {
                ScreenMediaRecorder.this.onStop();
            }
        }, this.mHandler);
        this.mMediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.android.systemui.screenrecord.ScreenMediaRecorder$$ExternalSyntheticLambda2
            @Override // android.media.MediaRecorder.OnInfoListener
            public final void onInfo(MediaRecorder mediaRecorder2, int i10, int i11) {
                RecordingService recordingService = (RecordingService) ScreenMediaRecorder.this.mListener;
                recordingService.getClass();
                Log.d("RecordingService", "Media recorder info: " + i10);
                recordingService.onStartCommand(RecordingService.getStopIntent(recordingService), 0, 0);
            }
        });
        ScreenRecordingAudioSource screenRecordingAudioSource3 = this.mAudioSource;
        ScreenRecordingAudioSource screenRecordingAudioSource4 = ScreenRecordingAudioSource.INTERNAL;
        if (screenRecordingAudioSource3 == screenRecordingAudioSource4 || screenRecordingAudioSource3 == ScreenRecordingAudioSource.MIC_AND_INTERNAL) {
            File createTempFile = File.createTempFile("temp", ".aac", this.mContext.getCacheDir());
            this.mTempAudioFile = createTempFile;
            String absolutePath = createTempFile.getAbsolutePath();
            MediaProjection mediaProjection2 = this.mMediaProjection;
            if (this.mAudioSource == ScreenRecordingAudioSource.MIC_AND_INTERNAL) {
                z = true;
            }
            this.mAudio = new ScreenInternalAudioRecorder(absolutePath, mediaProjection2, z);
        }
        this.mMediaRecorder.start();
        ScreenRecordingAudioSource screenRecordingAudioSource5 = this.mAudioSource;
        if (screenRecordingAudioSource5 == screenRecordingAudioSource4 || screenRecordingAudioSource5 == ScreenRecordingAudioSource.MIC_AND_INTERNAL) {
            ScreenInternalAudioRecorder screenInternalAudioRecorder = this.mAudio;
            synchronized (screenInternalAudioRecorder) {
                if (screenInternalAudioRecorder.mStarted) {
                    if (screenInternalAudioRecorder.mThread == null) {
                        throw new IllegalStateException("Recording stopped and can't restart (single use)");
                    }
                    throw new IllegalStateException("Recording already started");
                }
                screenInternalAudioRecorder.mStarted = true;
                screenInternalAudioRecorder.mAudioRecord.startRecording();
                if (screenInternalAudioRecorder.mMic) {
                    screenInternalAudioRecorder.mAudioRecordMic.startRecording();
                }
                Log.d("ScreenAudioRecorder", "channel count " + screenInternalAudioRecorder.mAudioRecord.getChannelCount());
                screenInternalAudioRecorder.mCodec.start();
                if (screenInternalAudioRecorder.mAudioRecord.getRecordingState() == 3) {
                    screenInternalAudioRecorder.mThread.start();
                } else {
                    throw new IllegalStateException("Audio recording failed to start");
                }
            }
        }
    }
}
