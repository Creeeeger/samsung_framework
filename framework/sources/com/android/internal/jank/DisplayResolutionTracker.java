package com.android.internal.jank;

import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManagerGlobal;
import android.os.Handler;
import android.util.SparseArray;
import android.view.DisplayInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes4.dex */
public class DisplayResolutionTracker {
    public static final int RESOLUTION_FHD = 3;
    public static final int RESOLUTION_HD = 2;
    public static final int RESOLUTION_QHD = 4;
    public static final int RESOLUTION_SD = 1;
    public static final int RESOLUTION_UNKNOWN = 0;
    private static final String TAG = DisplayResolutionTracker.class.getSimpleName();
    private final Object mLock;
    private final DisplayInterface mManager;
    private final SparseArray<Integer> mResolutions;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface Resolution {
    }

    public DisplayResolutionTracker(Handler handler) {
        this(DisplayInterface.getDefault(handler));
    }

    public DisplayResolutionTracker(DisplayInterface manager) {
        this.mResolutions = new SparseArray<>();
        this.mLock = new Object();
        this.mManager = manager;
        manager.registerDisplayListener(new DisplayManager.DisplayListener() { // from class: com.android.internal.jank.DisplayResolutionTracker.1
            AnonymousClass1() {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int displayId) {
                DisplayResolutionTracker.this.updateDisplay(displayId);
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int displayId) {
                DisplayResolutionTracker.this.updateDisplay(displayId);
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int displayId) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.internal.jank.DisplayResolutionTracker$1 */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 implements DisplayManager.DisplayListener {
        AnonymousClass1() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int displayId) {
            DisplayResolutionTracker.this.updateDisplay(displayId);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int displayId) {
            DisplayResolutionTracker.this.updateDisplay(displayId);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int displayId) {
        }
    }

    public void updateDisplay(int displayId) {
        DisplayInfo info = this.mManager.getDisplayInfo(displayId);
        if (info == null) {
            return;
        }
        int resolution = getResolution(info);
        synchronized (this.mLock) {
            this.mResolutions.put(displayId, Integer.valueOf(resolution));
        }
    }

    public int getResolution(int displayId) {
        return this.mResolutions.get(displayId, 0).intValue();
    }

    public static int getResolution(DisplayInfo info) {
        int smaller = Math.min(info.logicalWidth, info.logicalHeight);
        int larger = Math.max(info.logicalWidth, info.logicalHeight);
        if (smaller < 720 || larger < 1280) {
            return 1;
        }
        if (smaller < 1080 || larger < 1920) {
            return 2;
        }
        if (smaller < 1440 || larger < 2560) {
            return 3;
        }
        return 4;
    }

    /* loaded from: classes4.dex */
    public interface DisplayInterface {
        DisplayInfo getDisplayInfo(int i);

        void registerDisplayListener(DisplayManager.DisplayListener displayListener);

        /* renamed from: com.android.internal.jank.DisplayResolutionTracker$DisplayInterface$1 */
        /* loaded from: classes4.dex */
        public class AnonymousClass1 implements DisplayInterface {
            final /* synthetic */ Handler val$handler;

            AnonymousClass1(Handler handler) {
                handler = handler;
            }

            @Override // com.android.internal.jank.DisplayResolutionTracker.DisplayInterface
            public void registerDisplayListener(DisplayManager.DisplayListener listener) {
                DisplayManagerGlobal.this.registerDisplayListener(listener, handler, 5L);
            }

            @Override // com.android.internal.jank.DisplayResolutionTracker.DisplayInterface
            public DisplayInfo getDisplayInfo(int displayId) {
                return DisplayManagerGlobal.this.getDisplayInfo(displayId);
            }
        }

        static DisplayInterface getDefault(Handler handler) {
            DisplayManagerGlobal manager = DisplayManagerGlobal.getInstance();
            return new DisplayInterface() { // from class: com.android.internal.jank.DisplayResolutionTracker.DisplayInterface.1
                final /* synthetic */ Handler val$handler;

                AnonymousClass1(Handler handler2) {
                    handler = handler2;
                }

                @Override // com.android.internal.jank.DisplayResolutionTracker.DisplayInterface
                public void registerDisplayListener(DisplayManager.DisplayListener listener) {
                    DisplayManagerGlobal.this.registerDisplayListener(listener, handler, 5L);
                }

                @Override // com.android.internal.jank.DisplayResolutionTracker.DisplayInterface
                public DisplayInfo getDisplayInfo(int displayId) {
                    return DisplayManagerGlobal.this.getDisplayInfo(displayId);
                }
            };
        }
    }
}
