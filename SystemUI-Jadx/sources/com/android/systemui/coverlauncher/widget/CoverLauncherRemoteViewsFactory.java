package com.android.systemui.coverlauncher.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.coverlauncher.utils.CoverLauncherPackageInfo;
import com.android.systemui.coverlauncher.utils.CoverLauncherPackageUtils;
import com.android.systemui.coverlauncher.utils.CoverLauncherWidgetUtils;
import com.android.systemui.coverlauncher.utils.badge.BadgeItem;
import com.android.systemui.coverlauncher.utils.badge.BadgeManager;
import com.android.systemui.coverlauncher.utils.badge.BadgeUtils;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverLauncherRemoteViewsFactory implements RemoteViewsService.RemoteViewsFactory {
    public ArrayList mAppList;
    public final int mAppWidgetId;
    public final BadgeUtils mBadgeUtils;
    public final Context mContext;
    public final ArrayList mItemList = new ArrayList();
    public NotificationListener mNotificationListener;
    public final CoverLauncherPackageUtils mPackageUtil;
    public final int mType;
    public final CoverLauncherWidgetUtils mWidgetUtil;

    public CoverLauncherRemoteViewsFactory(Context context, Intent intent) {
        this.mContext = context;
        this.mAppWidgetId = intent.getIntExtra("appWidgetId", 0);
        this.mPackageUtil = new CoverLauncherPackageUtils(context);
        this.mWidgetUtil = new CoverLauncherWidgetUtils(context);
        BadgeUtils badgeUtils = new BadgeUtils(context);
        this.mBadgeUtils = badgeUtils;
        this.mType = intent.getIntExtra("widgetType", 0);
        if (Settings.Secure.getInt(badgeUtils.mContext.getContentResolver(), "notification_badging", 0) != 0) {
            NotificationListener notificationListener = new NotificationListener();
            notificationListener.mContext = context;
            try {
                notificationListener.unregisterAsSystemService();
                notificationListener.registerAsSystemService(context, new ComponentName(context, (Class<?>) NotificationListener.class), UserHandle.semGetMyUserId());
                notificationListener.mIsRegister = true;
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.mNotificationListener = notificationListener;
        }
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final int getCount() {
        ArrayList appListFromDB = CoverLauncherWidgetUtils.getAppListFromDB(this.mContext, false);
        this.mAppList = appListFromDB;
        return appListFromDB.size();
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final RemoteViews getLoadingView() {
        return new RemoteViews(this.mContext.getPackageName(), R.layout.widget_item_loading_layout);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final RemoteViews getViewAt(int i) {
        if (i >= getCount() || i >= this.mItemList.size()) {
            return null;
        }
        return (RemoteViews) this.mItemList.get(i);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onCreate() {
        this.mAppList = CoverLauncherWidgetUtils.getAppListFromDB(this.mContext, false);
        setItemData(this.mType);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onDataSetChanged() {
        TooltipPopup$$ExternalSyntheticOutline0.m(new StringBuilder("onDataSetChanged, id="), this.mAppWidgetId, "CoverLauncherRemoteViewsFactory");
        this.mAppList = CoverLauncherWidgetUtils.getAppListFromDB(this.mContext, false);
        setItemData(this.mType);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onDestroy() {
        NotificationListener notificationListener = this.mNotificationListener;
        if (notificationListener != null) {
            HashSet hashSet = NotificationListener.sBlockChannelSet;
            if (notificationListener != null) {
                try {
                    notificationListener.unregisterAsSystemService();
                    notificationListener.mIsRegister = false;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.mNotificationListener = null;
        }
    }

    public final void setItemData(int i) {
        int i2;
        Drawable drawable;
        int i3;
        int i4;
        int i5;
        boolean z;
        Bitmap createBitmap;
        Bitmap bitmap;
        int count = getCount();
        this.mItemList.clear();
        int i6 = 0;
        for (int i7 = 0; i7 < count; i7++) {
            CoverLauncherPackageInfo coverLauncherPackageInfo = (CoverLauncherPackageInfo) this.mAppList.get(i7);
            String str = coverLauncherPackageInfo.mPackageName;
            int i8 = coverLauncherPackageInfo.mProfileId;
            TooltipPopup$$ExternalSyntheticOutline0.m(CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("createRemoteViews, packageName=", str, ", type=", i, ", id="), this.mAppWidgetId, "CoverLauncherRemoteViewsFactory");
            Context context = this.mWidgetUtil.mContext;
            if (i == 2) {
                i2 = R.layout.widget_item_layout_2_2;
            } else if (i == 1) {
                if (context.getResources().getConfiguration().isNightModeActive()) {
                    i2 = R.layout.widget_item_layout_4_2_night;
                } else {
                    i2 = R.layout.widget_item_layout_4_2;
                }
            } else {
                i2 = R.layout.widget_item_layout;
            }
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
            Intent intent = new Intent(context, (Class<?>) CoverLauncherWidgetUtils.sWidgetClassArray[i]);
            intent.setAction("action_launch_app");
            CoverLauncherPackageUtils coverLauncherPackageUtils = new CoverLauncherPackageUtils(context);
            PackageManager packageManager = coverLauncherPackageUtils.mPackageManager;
            try {
                ApplicationInfo applicationInfoAsUser = packageManager.getApplicationInfoAsUser(str, i6, i8);
                drawable = packageManager.semGetApplicationIconForIconTray(applicationInfoAsUser, 48);
                if (drawable != null && (applicationInfoAsUser.flags & VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS) != 0) {
                    drawable.setColorFilter(CoverLauncherPackageUtils.getGrayFilter());
                }
            } catch (Exception e) {
                Log.e("CoverLauncherPackageUtils", "Failed to get Application Icon " + str + ", profileId : " + i8, e);
                coverLauncherPackageUtils.tryUpdateAppWidget();
                drawable = null;
            }
            if (drawable != null) {
                if (drawable instanceof BitmapDrawable) {
                    BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                    if (bitmapDrawable.getBitmap() != null) {
                        bitmap = bitmapDrawable.getBitmap();
                        int dimension = (int) context.getResources().getDimension(R.dimen.widget_launcher_item_icon_size);
                        remoteViews.setImageViewBitmap(R.id.app_icon, Bitmap.createScaledBitmap(bitmap, dimension, dimension, true));
                    }
                }
                if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
                    createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                } else {
                    createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                }
                Canvas canvas = new Canvas(createBitmap);
                drawable.setBounds(i6, i6, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                bitmap = createBitmap;
                int dimension2 = (int) context.getResources().getDimension(R.dimen.widget_launcher_item_icon_size);
                remoteViews.setImageViewBitmap(R.id.app_icon, Bitmap.createScaledBitmap(bitmap, dimension2, dimension2, true));
            }
            Bundle bundle = new Bundle();
            bundle.putString("key_package_name", str);
            bundle.putInt("key_profile_id", i8);
            intent.putExtras(bundle);
            remoteViews.setOnClickFillInIntent(R.id.app_item, intent);
            String applicationLabel = this.mPackageUtil.getApplicationLabel(str);
            if (i != 2) {
                remoteViews.setTextViewText(R.id.app_title, applicationLabel);
            }
            StringBuilder sb = new StringBuilder(applicationLabel);
            BadgeUtils badgeUtils = this.mBadgeUtils;
            badgeUtils.getClass();
            Context context2 = badgeUtils.mContext;
            if (Settings.Secure.getInt(context2.getContentResolver(), "notification_badging", i6) != 0) {
                i3 = 1;
            } else {
                i3 = i6;
            }
            if (i3 != 0) {
                BadgeItem badgeItem = (BadgeItem) BadgeManager.getInstance().mItems.get(str + ":" + i8);
                if (badgeItem != null) {
                    Log.i("BadgeUtils", "packageName : " + str + ", badgeItem : " + badgeItem);
                    Cursor query = context2.getContentResolver().query(BadgeUtils.BADGE_URI, BadgeUtils.COLUMNS, "package = ?", new String[]{str}, null);
                    if (query == null) {
                        try {
                            Log.i("BadgeUtils", "Cursor is null");
                        } finally {
                        }
                    } else if (query.getCount() <= 0) {
                        Log.i("BadgeUtils", "Cursor count is invalid");
                    } else {
                        int i9 = 1;
                        int i10 = i6;
                        while (query.moveToNext()) {
                            String string = query.getString(i6);
                            String string2 = query.getString(i9);
                            int i11 = query.getInt(2);
                            Log.i("BadgeUtils", "badge provider info, pkgName : " + string + ", className : " + string2 + ", badgeCount : " + i11);
                            i6 = 0;
                            i9 = 1;
                            i10 = i11;
                        }
                        i6 = i10;
                    }
                    if (query != null) {
                        query.close();
                    }
                    i5 = Math.max(Math.min(badgeItem.mTotalCount, 999), i6);
                } else {
                    i5 = 0;
                }
                if (i5 == 0) {
                    remoteViews.setViewVisibility(R.id.app_icon_badge, 8);
                    remoteViews.setViewVisibility(R.id.app_icon_badge_two_number, 8);
                    remoteViews.setViewVisibility(R.id.app_icon_badge_three_number, 8);
                    remoteViews.setViewVisibility(R.id.app_icon_dot_badge, 8);
                    i4 = R.id.app_icon;
                    i6 = 0;
                    remoteViews.setContentDescription(i4, sb);
                    this.mItemList.add(remoteViews);
                } else {
                    if (Settings.Secure.getInt(context2.getContentResolver(), "badge_app_icon_type", 0) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        remoteViews.setViewVisibility(R.id.app_icon_badge, 8);
                        remoteViews.setViewVisibility(R.id.app_icon_badge_two_number, 8);
                        remoteViews.setViewVisibility(R.id.app_icon_badge_three_number, 8);
                        remoteViews.setViewVisibility(R.id.app_icon_dot_badge, 0);
                    } else {
                        remoteViews.setViewVisibility(R.id.app_icon_dot_badge, 8);
                        if (i5 > 99) {
                            remoteViews.setViewVisibility(R.id.app_icon_badge, 8);
                            remoteViews.setViewVisibility(R.id.app_icon_badge_two_number, 8);
                            remoteViews.setViewVisibility(R.id.app_icon_badge_three_number, 0);
                            remoteViews.setTextViewText(R.id.app_icon_badge_three_number, String.valueOf(i5));
                        } else if (i5 > 9) {
                            remoteViews.setViewVisibility(R.id.app_icon_badge, 8);
                            remoteViews.setViewVisibility(R.id.app_icon_badge_two_number, 0);
                            remoteViews.setViewVisibility(R.id.app_icon_badge_three_number, 8);
                            remoteViews.setTextViewText(R.id.app_icon_badge_two_number, String.valueOf(i5));
                        } else {
                            remoteViews.setViewVisibility(R.id.app_icon_badge, 0);
                            remoteViews.setViewVisibility(R.id.app_icon_badge_two_number, 8);
                            remoteViews.setViewVisibility(R.id.app_icon_badge_three_number, 8);
                            remoteViews.setTextViewText(R.id.app_icon_badge, String.valueOf(i5));
                        }
                    }
                    sb.append(i5);
                    sb.append(context2.getString(R.string.notification_channel_alerts));
                    i6 = 0;
                }
            } else {
                remoteViews.setViewVisibility(R.id.app_icon_badge, 8);
                remoteViews.setViewVisibility(R.id.app_icon_badge_two_number, 8);
                remoteViews.setViewVisibility(R.id.app_icon_badge_three_number, 8);
                remoteViews.setViewVisibility(R.id.app_icon_dot_badge, 8);
            }
            i4 = R.id.app_icon;
            remoteViews.setContentDescription(i4, sb);
            this.mItemList.add(remoteViews);
        }
    }
}
