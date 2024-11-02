package com.android.systemui.pluginlock;

import com.android.systemui.LsRune;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.google.gson.annotations.SerializedName;
import com.sec.ims.scab.CABContract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockInstanceData {

    @SerializedName("data")
    private ArrayList<Data> mData;

    @SerializedName("version")
    private Integer mVersion = 3;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Data {

        @SerializedName(CABContract.CABBusinessContactPhone.NUMBER)
        private Integer mNumber;

        @SerializedName("package_name")
        private String mPackageName;

        @SerializedName("recover_data")
        private RecoverData mRecoverData;

        @SerializedName("time_stamp_list")
        private final List<Long> mTimeStampList;

        @SerializedName("time_stamp")
        private Long mTimeStamp = 0L;

        @SerializedName("which")
        private Integer mWhich = 0;

        public Data() {
            ArrayList arrayList = new ArrayList();
            this.mTimeStampList = arrayList;
            arrayList.add(0, 0L);
            arrayList.add(1, 0L);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Data) {
                return this.mPackageName.equals(((Data) obj).mPackageName);
            }
            return false;
        }

        public final Integer getNumber() {
            return this.mNumber;
        }

        public final String getPackageName() {
            return this.mPackageName;
        }

        public final RecoverData getRecoverData() {
            if (this.mRecoverData == null) {
                this.mRecoverData = new RecoverData();
            }
            return this.mRecoverData;
        }

        public final Long getTimeStamp() {
            return this.mTimeStamp;
        }

        public final Long getTimeStamps(int i) {
            List<Long> list = this.mTimeStampList;
            if (list != null) {
                return list.get(i);
            }
            return 0L;
        }

        public final int getWhich() {
            return this.mWhich.intValue();
        }

        public final boolean isEnabled(int i) {
            if (LsRune.PLUGIN_LOCK_MULTIPLE_ACTIVATION) {
                if (i == 0) {
                    if ((this.mWhich.intValue() & 1) == 0) {
                        return false;
                    }
                    return true;
                }
                if (i != 1 || (this.mWhich.intValue() & 2) == 0) {
                    return false;
                }
                return true;
            }
            if (this.mTimeStamp.longValue() <= 0) {
                return false;
            }
            return true;
        }

        public final void setNumber(Integer num) {
            this.mNumber = num;
        }

        public final void setPackageName(String str) {
            this.mPackageName = str;
        }

        public final void setRecoverData(RecoverData recoverData) {
            this.mRecoverData = recoverData;
        }

        public final void setScreen(int i, boolean z) {
            if (i == 0) {
                if (z) {
                    this.mWhich = Integer.valueOf(this.mWhich.intValue() | 1);
                    return;
                } else {
                    this.mWhich = Integer.valueOf(this.mWhich.intValue() & (-2));
                    return;
                }
            }
            if (i == 1) {
                if (z) {
                    this.mWhich = Integer.valueOf(this.mWhich.intValue() | 2);
                } else {
                    this.mWhich = Integer.valueOf(this.mWhich.intValue() & (-3));
                }
            }
        }

        public final void setTimeStamp(Long l) {
            this.mTimeStamp = l;
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        
            r5 = r5;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void setTimeStampList(java.util.List r5) {
            /*
                r4 = this;
                if (r5 != 0) goto L19
                java.util.ArrayList r5 = new java.util.ArrayList
                r5.<init>()
                r0 = 0
                r1 = 0
                java.lang.Long r3 = java.lang.Long.valueOf(r1)
                r5.add(r0, r3)
                r0 = 1
                java.lang.Long r1 = java.lang.Long.valueOf(r1)
                r5.add(r0, r1)
            L19:
                java.util.List<java.lang.Long> r4 = r4.mTimeStampList
                java.util.Collections.copy(r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginLockInstanceData.Data.setTimeStampList(java.util.List):void");
        }

        public final void setWhich(int i) {
            this.mWhich = Integer.valueOf(i);
        }

        public final String toString() {
            String l;
            if (LsRune.PLUGIN_LOCK_MULTIPLE_ACTIVATION) {
                l = this.mTimeStampList.get(0) + ", " + this.mTimeStampList.get(1);
            } else {
                l = this.mTimeStamp.toString();
            }
            return "[" + this.mPackageName + "," + this.mNumber + "," + l + "," + this.mWhich + ", " + this.mRecoverData + "]";
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class RecoverData {

            @SerializedName("clock_state")
            private Integer mClockState = -1;

            @SerializedName(SubRoom.EXTRA_VALUE_CLOCK)
            private Integer mClock = -1;

            @SerializedName(SubRoom.EXTRA_VALUE_NOTIFICATION)
            private Integer mNotificationState = -1;

            @SerializedName("notification_origin")
            private Integer mNotificationBackupType = -1;

            @SerializedName("notification_visibility")
            private Integer mNotificationBackup = -1;

            @SerializedName("wallpaper_dynamic")
            private Integer mWallpaperDynamic = -2;

            @SerializedName("wallpaper_type")
            private Integer mWallpaperType = -1;

            @SerializedName("wallpaper_source")
            private Integer mWallpaperSource = -1;

            @SerializedName("wallpaper_dynamic_sub")
            private Integer mWallpaperDynamicSub = -2;

            @SerializedName("wallpaper_type_sub")
            private Integer mWallpaperTypeSub = -1;

            @SerializedName("wallpaper_source_sub")
            private Integer mWallpaperSourceSub = -1;

            @SerializedName("shortcut")
            private Integer mShortcut = -1;

            @SerializedName("shortcut_state")
            private Integer mShortcutState = -1;

            public final Integer getClock() {
                Integer num = this.mClock;
                if (num == null) {
                    return -1;
                }
                return num;
            }

            public final Integer getClockState() {
                Integer num = this.mClockState;
                if (num == null) {
                    return -1;
                }
                return num;
            }

            public final Integer getNotificationBackupType() {
                Integer num = this.mNotificationBackupType;
                if (num == null) {
                    return -1;
                }
                return num;
            }

            public final Integer getNotificationBackupVisibility() {
                Integer num = this.mNotificationBackup;
                if (num == null) {
                    return -1;
                }
                return num;
            }

            public final Integer getNotificationState() {
                Integer num = this.mNotificationState;
                if (num == null) {
                    return -1;
                }
                return num;
            }

            public final Integer getShortcutBackupValue() {
                Integer num = this.mShortcut;
                if (num == null) {
                    return -1;
                }
                return num;
            }

            public final Integer getShortcutState() {
                Integer num = this.mShortcutState;
                if (num == null) {
                    return -1;
                }
                return num;
            }

            public final Integer getWallpaperSource(int i) {
                if (i == 0) {
                    Integer num = this.mWallpaperSource;
                    if (num == null) {
                        return -1;
                    }
                    return num;
                }
                Integer num2 = this.mWallpaperSourceSub;
                if (num2 == null) {
                    return -1;
                }
                return num2;
            }

            public final Integer getWallpaperType(int i) {
                if (i == 0) {
                    Integer num = this.mWallpaperType;
                    if (num == null) {
                        return -1;
                    }
                    return num;
                }
                Integer num2 = this.mWallpaperTypeSub;
                if (num2 == null) {
                    return -1;
                }
                return num2;
            }

            public final void setClock(int i) {
                this.mClock = Integer.valueOf(i);
            }

            public final void setClockState(int i) {
                this.mClockState = Integer.valueOf(i);
            }

            public final void setNotificationBackupType(Integer num) {
                this.mNotificationBackupType = num;
            }

            public final void setNotificationBackupVisibility(Integer num) {
                this.mNotificationBackup = num;
            }

            public final void setNotificationState(int i) {
                this.mNotificationState = Integer.valueOf(i);
            }

            public final void setShortcutBackup(int i) {
                this.mShortcut = Integer.valueOf(i);
            }

            public final void setShortcutState(int i) {
                this.mShortcutState = Integer.valueOf(i);
            }

            public final void setWallpaperDynamic(int i) {
                this.mWallpaperDynamic = Integer.valueOf(i);
                this.mWallpaperDynamicSub = Integer.valueOf(i);
            }

            public final void setWallpaperSource() {
                this.mWallpaperSource = -1;
                this.mWallpaperSourceSub = -1;
            }

            public final void setWallpaperType() {
                this.mWallpaperType = -1;
                this.mWallpaperTypeSub = -1;
            }

            public final String toString() {
                return "[" + this.mClock + "," + this.mNotificationState + "," + this.mNotificationBackupType + "," + this.mNotificationBackup + "," + this.mWallpaperDynamic + "," + this.mWallpaperType + "," + this.mWallpaperSource + "," + this.mWallpaperDynamicSub + "," + this.mWallpaperTypeSub + "," + this.mWallpaperSourceSub + "," + this.mShortcut + "," + this.mShortcutState + "]";
            }

            public final void setWallpaperDynamic(int i, int i2) {
                if (i == 0) {
                    this.mWallpaperDynamic = Integer.valueOf(i2);
                } else {
                    this.mWallpaperDynamicSub = Integer.valueOf(i2);
                }
            }

            public final void setWallpaperSource(int i, int i2) {
                if (i == 0) {
                    this.mWallpaperSource = Integer.valueOf(i2);
                } else {
                    this.mWallpaperSourceSub = Integer.valueOf(i2);
                }
            }

            public final void setWallpaperType(int i, int i2) {
                if (i == 0) {
                    this.mWallpaperType = Integer.valueOf(i2);
                } else {
                    this.mWallpaperTypeSub = Integer.valueOf(i2);
                }
            }
        }

        public final void setTimeStamp(int i, Long l) {
            this.mTimeStampList.set(i, l);
        }

        public final List getTimeStamps() {
            return this.mTimeStampList;
        }
    }

    public final void addData(Data data) {
        if (this.mData == null) {
            this.mData = new ArrayList<>();
        }
        this.mData.add(data);
    }

    public final boolean contain(String str) {
        Iterator<Data> it = this.mData.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public final Data getData(String str) {
        Iterator<Data> it = this.mData.iterator();
        while (it.hasNext()) {
            Data next = it.next();
            if (str.equals(next.getPackageName())) {
                return next;
            }
        }
        return null;
    }

    public final ArrayList getDataList() {
        if (this.mData == null) {
            this.mData = new ArrayList<>();
        }
        return this.mData;
    }

    public final Integer getVersion() {
        return this.mVersion;
    }

    public final void setVersion() {
        this.mVersion = 3;
    }

    public final String toString() {
        if (this.mData == null) {
            return "no data";
        }
        StringBuilder sb = new StringBuilder("\n");
        Iterator<Data> it = this.mData.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}
