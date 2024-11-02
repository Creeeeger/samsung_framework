package com.android.systemui.widget;

import android.app.SemWallpaperColors;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.android.systemui.Dependency;
import com.android.systemui.R$styleable;
import com.android.systemui.pluginlock.PluginLockManager;
import com.android.systemui.pluginlock.PluginLockManagerImpl;
import com.android.systemui.pluginlock.listener.PluginLockListener$State;
import com.android.systemui.wallpaper.WallpaperEventNotifier;
import com.android.systemui.wallpaper.WallpaperUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SystemUIView extends View implements SystemUIWidgetCallback {
    public int mAttrCount;
    public String mDefaultArea;
    public boolean mIsCallbackRegistered;
    public boolean mIsLockStarEnabled;
    public final AnonymousClass1 mLockStarCallback;
    public long mPendingUpdateFlag;
    public final PluginLockManager mPluginLockManager;
    public final ResData mResData;
    public long mUpdateFlag;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ResData {
        public String mGroup;
        public boolean mMovable;
        public String mOriginColor;
        public int mOriginColorId;
        public String mOriginImage;
        public int mOriginImageId;
        public String mThemeBlackColor;
        public String mThemeBlackImage;
        public String mThemeColor;
        public String mThemeImage;
        public String mWallpaperArea;
        public String mWhiteBgColor;
        public int mWhiteBgColorId;
        public String mWhiteBgImage;
        public int mWhiteBgImageId;

        private ResData() {
        }

        public /* synthetic */ ResData(int i) {
            this();
        }
    }

    public SystemUIView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAttrCount > 0) {
            ResData resData = this.mResData;
            this.mDefaultArea = resData.mWallpaperArea;
            if (resData.mMovable) {
                ((PluginLockManagerImpl) this.mPluginLockManager).registerSystemUIViewCallback(this.mLockStarCallback);
                if (this.mIsLockStarEnabled) {
                    ResData resData2 = this.mResData;
                    resData2.mWallpaperArea = ((PluginLockManagerImpl) this.mPluginLockManager).getLockStarItemLocationInfo(resData2.mGroup);
                }
            }
            SystemUIWidgetUtil.registerSystemUIWidgetCallback(this, SystemUIWidgetUtil.convertFlag(this.mResData.mWallpaperArea));
            this.mIsCallbackRegistered = true;
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mIsCallbackRegistered) {
            this.mIsCallbackRegistered = false;
            if (WallpaperEventNotifier.getInstance() != null) {
                WallpaperEventNotifier.getInstance().removeCallback(false, this);
            }
        }
        if (this.mResData.mMovable) {
            ((PluginLockManagerImpl) this.mPluginLockManager).removeSystemUIViewCallback(this.mLockStarCallback);
            this.mResData.mWallpaperArea = this.mDefaultArea;
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ResData resData = this.mResData;
        int i = resData.mOriginImageId;
        int i2 = resData.mOriginColorId;
        if (i > 0) {
            Log.e("SystemUIView", "setBackgroundResource!!");
            setBackgroundResource(i);
        }
        if (i2 > 0) {
            Log.e("SystemUIView", "setBackgroundColor!!");
            setBackgroundColor(((View) this).mContext.getResources().getColor(i2, null));
        }
    }

    public final void refreshResIds() {
        SystemUIWidgetRes systemUIWidgetRes = SystemUIWidgetRes.getInstance(((View) this).mContext);
        ResData resData = this.mResData;
        String str = resData.mOriginColor;
        if (str != null) {
            resData.mOriginColorId = systemUIWidgetRes.getResIdByName(str, "color");
        }
        ResData resData2 = this.mResData;
        String str2 = resData2.mWhiteBgColor;
        if (str2 != null) {
            resData2.mWhiteBgColorId = systemUIWidgetRes.getResIdByName(str2, "color");
        }
        ResData resData3 = this.mResData;
        String str3 = resData3.mThemeColor;
        if (str3 != null) {
            systemUIWidgetRes.getResIdByName(str3, "color");
            resData3.getClass();
        }
        ResData resData4 = this.mResData;
        String str4 = resData4.mThemeBlackColor;
        if (str4 != null) {
            systemUIWidgetRes.getResIdByName(str4, "color");
            resData4.getClass();
        }
        ResData resData5 = this.mResData;
        String str5 = resData5.mOriginImage;
        if (str5 != null) {
            resData5.mOriginImageId = systemUIWidgetRes.getResIdByName(str5, "drawable");
        }
        ResData resData6 = this.mResData;
        String str6 = resData6.mWhiteBgImage;
        if (str6 != null) {
            resData6.mWhiteBgImageId = systemUIWidgetRes.getResIdByName(str6, "drawable");
        }
        ResData resData7 = this.mResData;
        String str7 = resData7.mThemeImage;
        if (str7 != null) {
            systemUIWidgetRes.getResIdByName(str7, "drawable");
            resData7.getClass();
        }
        ResData resData8 = this.mResData;
        String str8 = resData8.mThemeBlackImage;
        if (str8 != null) {
            systemUIWidgetRes.getResIdByName(str8, "drawable");
            resData8.getClass();
        }
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0 && this.mPendingUpdateFlag != 0) {
            if (WallpaperEventNotifier.getInstance() != null) {
                updateStyle(this.mPendingUpdateFlag, WallpaperEventNotifier.getInstance().getSemWallpaperColors(false));
            }
            this.mPendingUpdateFlag = 0L;
        }
    }

    @Override // com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        int i;
        int i2;
        boolean z = false;
        if (j != 0) {
            if (getVisibility() != 0) {
                this.mPendingUpdateFlag = j;
            } else {
                z = true;
            }
        }
        if (!z) {
            return;
        }
        Log.d("SystemUIView", "updateStyle() flag=" + Long.toHexString(this.mUpdateFlag) + "," + Long.toHexString(j) + " : " + toString());
        this.mUpdateFlag = j;
        refreshResIds();
        boolean isWhiteKeyguardWallpaper = WallpaperUtils.isWhiteKeyguardWallpaper(this.mResData.mWallpaperArea);
        ResData resData = this.mResData;
        if (isWhiteKeyguardWallpaper) {
            i = resData.mWhiteBgImageId;
        } else {
            i = resData.mOriginImageId;
        }
        if (isWhiteKeyguardWallpaper) {
            i2 = resData.mWhiteBgColorId;
        } else {
            i2 = resData.mOriginColorId;
        }
        if (((this.mUpdateFlag & 1) == 0 || !WallpaperUtils.isOpenThemeLook()) && isWhiteKeyguardWallpaper) {
            ResData resData2 = this.mResData;
            if (resData2.mWhiteBgImage != null || resData2.mWhiteBgColor != null) {
                Log.d("SystemUIView", "apply style: white-bg");
                ResData resData3 = this.mResData;
                if (resData3.mWhiteBgImage != null) {
                    i = resData3.mWhiteBgImageId;
                }
                if (resData3.mWhiteBgColor != null) {
                    i2 = resData3.mWhiteBgColorId;
                }
            }
        }
        if (i > 0) {
            Log.e("SystemUIView", "setBackgroundResource!!");
            setBackgroundResource(i);
        }
        if (i2 > 0) {
            Log.e("SystemUIView", "setBackgroundColor!!");
            setBackgroundColor(((View) this).mContext.getResources().getColor(i2, null));
        }
    }

    public SystemUIView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SystemUIView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [com.android.systemui.widget.SystemUIView$1] */
    public SystemUIView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mUpdateFlag = 0L;
        this.mResData = new ResData(0);
        this.mAttrCount = 0;
        this.mIsCallbackRegistered = false;
        this.mPendingUpdateFlag = 0L;
        this.mPluginLockManager = (PluginLockManager) Dependency.get(PluginLockManager.class);
        this.mLockStarCallback = new PluginLockListener$State() { // from class: com.android.systemui.widget.SystemUIView.1
            @Override // com.android.systemui.pluginlock.listener.PluginLockListener$State
            public final void onLockStarEnabled(boolean z) {
                SystemUIView systemUIView = SystemUIView.this;
                systemUIView.mIsLockStarEnabled = z;
                if (z) {
                    ResData resData = systemUIView.mResData;
                    resData.mWallpaperArea = ((PluginLockManagerImpl) systemUIView.mPluginLockManager).getLockStarItemLocationInfo(resData.mGroup);
                } else {
                    systemUIView.mResData.mWallpaperArea = systemUIView.mDefaultArea;
                }
                ((WallpaperEventNotifier) Dependency.get(WallpaperEventNotifier.class)).removeCallback(false, systemUIView);
                WallpaperUtils.registerSystemUIWidgetCallback(systemUIView, SystemUIWidgetUtil.convertFlag(systemUIView.mResData.mWallpaperArea));
            }
        };
        TypedArray obtainStyledAttributes = ((View) this).mContext.obtainStyledAttributes(attributeSet, R$styleable.SysuiWidgetRes, i, i2);
        if (obtainStyledAttributes != null) {
            this.mAttrCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < this.mAttrCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == 23) {
                    this.mResData.mWallpaperArea = obtainStyledAttributes.getString(index);
                } else if (index == 0) {
                    ResData resData = this.mResData;
                    obtainStyledAttributes.getString(index);
                    resData.getClass();
                } else if (index == 9) {
                    this.mResData.mOriginColor = obtainStyledAttributes.getString(index);
                } else if (index == 26) {
                    this.mResData.mWhiteBgColor = obtainStyledAttributes.getString(index);
                } else if (index == 18) {
                    this.mResData.mThemeColor = obtainStyledAttributes.getString(index);
                } else if (index == 15) {
                    this.mResData.mThemeBlackColor = obtainStyledAttributes.getString(index);
                } else if (index == 10) {
                    this.mResData.mOriginImage = obtainStyledAttributes.getString(index);
                } else if (index == 19) {
                    this.mResData.mThemeImage = obtainStyledAttributes.getString(index);
                } else if (index == 16) {
                    this.mResData.mThemeBlackImage = obtainStyledAttributes.getString(index);
                } else if (index == 27) {
                    this.mResData.mWhiteBgImage = obtainStyledAttributes.getString(index);
                } else if (index == 7) {
                    this.mResData.mMovable = obtainStyledAttributes.getBoolean(index, false);
                } else if (index == 5) {
                    this.mResData.mGroup = obtainStyledAttributes.getString(index);
                } else if (index == 20) {
                    ResData resData2 = this.mResData;
                    obtainStyledAttributes.getBoolean(index, false);
                    resData2.getClass();
                }
            }
            refreshResIds();
        }
        obtainStyledAttributes.recycle();
    }
}
