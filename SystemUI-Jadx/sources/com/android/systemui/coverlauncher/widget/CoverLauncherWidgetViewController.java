package com.android.systemui.coverlauncher.widget;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.widget.GridView;
import android.widget.RemoteViews;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.coverlauncher.utils.CoverLauncherWidgetUtils;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverLauncherWidgetViewController {
    public static CoverLauncherWidgetViewController mController;
    public final HashMap appWidgetUpdating = new HashMap();
    public final Context mContext;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.coverlauncher.widget.CoverLauncherWidgetViewController$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements Runnable {
        public final /* synthetic */ int[] val$appWidgetIds;
        public final /* synthetic */ AppWidgetManager val$appWidgetManager;

        public AnonymousClass2(int[] iArr, AppWidgetManager appWidgetManager) {
            this.val$appWidgetIds = iArr;
            this.val$appWidgetManager = appWidgetManager;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            boolean z = false;
            for (int i3 : this.val$appWidgetIds) {
                if (CoverLauncherWidgetViewController.this.appWidgetUpdating.get(Integer.valueOf(i3)) != null && ((Boolean) CoverLauncherWidgetViewController.this.appWidgetUpdating.get(Integer.valueOf(i3))).booleanValue()) {
                    Log.i("CoverLauncherWidgetViewController", "skip update cover appWidget");
                } else {
                    CoverLauncherWidgetViewController.this.appWidgetUpdating.put(Integer.valueOf(i3), Boolean.TRUE);
                    int size = CoverLauncherWidgetUtils.getAppListFromDB(CoverLauncherWidgetViewController.this.mContext, true).size();
                    CoverLauncherWidgetViewController coverLauncherWidgetViewController = CoverLauncherWidgetViewController.this;
                    AppWidgetManager appWidgetManager = this.val$appWidgetManager;
                    coverLauncherWidgetViewController.getClass();
                    if (appWidgetManager.getAppWidgetInfo(i3) == null) {
                        i = -1;
                    } else {
                        int i4 = appWidgetManager.getAppWidgetInfo(i3).targetCellWidth;
                        int i5 = appWidgetManager.getAppWidgetInfo(i3).targetCellHeight;
                        if (i4 == 4 && i5 == 2) {
                            i = 1;
                        } else if (i4 == 2 && i5 == 2) {
                            i = 2;
                        } else {
                            i = 0;
                        }
                    }
                    if (i == -1) {
                        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("invalid appWidgetId : appWidgetInfo is null id=", i3, "CoverLauncherWidgetViewController");
                        CoverLauncherWidgetViewController.this.appWidgetUpdating.put(Integer.valueOf(i3), Boolean.FALSE);
                    } else {
                        Log.i("CoverLauncherWidgetViewController", "update cover appWidget " + i3 + ", type=" + i);
                        CoverLauncherWidgetViewController coverLauncherWidgetViewController2 = CoverLauncherWidgetViewController.this;
                        coverLauncherWidgetViewController2.getClass();
                        Context context = coverLauncherWidgetViewController2.mContext;
                        boolean isNightModeActive = context.getResources().getConfiguration().isNightModeActive();
                        if (i == 2) {
                            if (isNightModeActive) {
                                if (size == 0) {
                                    i2 = R.layout.widget_layout_none_2_2_night;
                                } else {
                                    i2 = R.layout.widget_layout_2_2_night;
                                }
                            } else if (size == 0) {
                                i2 = R.layout.widget_layout_none_2_2;
                            } else {
                                i2 = R.layout.widget_layout_2_2;
                            }
                        } else if (i == 1) {
                            if (isNightModeActive) {
                                if (size == 0) {
                                    i2 = R.layout.widget_layout_none_4_2_night;
                                } else {
                                    i2 = R.layout.widget_layout_4_2_night;
                                }
                            } else if (size == 0) {
                                i2 = R.layout.widget_layout_none_4_2;
                            } else {
                                i2 = R.layout.widget_layout_4_2;
                            }
                        } else if (size == 0) {
                            i2 = R.layout.widget_layout_none;
                        } else if (size > 8) {
                            i2 = R.layout.widget_layout;
                        } else {
                            i2 = R.layout.widget_layout_2line;
                        }
                        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
                        if (size > 0) {
                            Intent intent = new Intent(context, (Class<?>) CoverLauncherWidgetUtils.sRemoteViewsClassArray[i]);
                            intent.setData(Uri.parse(intent.toUri(1)));
                            intent.putExtra("widgetType", i);
                            intent.putExtra("appWidgetId", i3);
                            remoteViews.setRemoteAdapter(R.id.gridview, intent);
                            Intent intent2 = new Intent(context, (Class<?>) CoverLauncherWidgetUtils.sWidgetClassArray[i]);
                            intent2.setAction("action_launch_app");
                            intent2.putExtra("appWidgetId", i3);
                            remoteViews.setPendingIntentTemplate(R.id.gridview, PendingIntent.getBroadcast(context, i3 * 100, intent2, 301989888));
                            int i6 = 2;
                            if (i != 2) {
                                i6 = 4;
                                if (i != 1) {
                                    if (size >= 4) {
                                        size = 4;
                                    }
                                    i6 = size;
                                }
                            }
                            remoteViews.setInt(R.id.gridview, "setNumColumns", i6);
                            try {
                                GridView.class.getMethod("semEnableSelectZeroOnLastFocusTab", Boolean.TYPE);
                                remoteViews.setBoolean(R.id.gridview, "semEnableSelectZeroOnLastFocusTab", true);
                            } catch (NoSuchMethodException e) {
                                Log.i("CoverLauncherWidgetViewController", e + " semEnableSelectZeroOnLastFocusTab");
                            }
                        } else if (size == 0) {
                            Intent intent3 = new Intent(context, (Class<?>) CoverLauncherWidgetHelper.class);
                            intent3.setFlags(872415232);
                            intent3.putExtra("appWidgetId", i3);
                            ActivityOptions makeBasic = ActivityOptions.makeBasic();
                            makeBasic.setLaunchDisplayId(0);
                            remoteViews.setOnClickPendingIntent(R.id.root, PendingIntent.getActivity(context, i3 * 100, intent3, 167772160, makeBasic.toBundle()));
                        }
                        this.val$appWidgetManager.updateAppWidget(i3, remoteViews);
                        CoverLauncherWidgetViewController.this.appWidgetUpdating.put(Integer.valueOf(i3), Boolean.FALSE);
                        z = true;
                    }
                }
            }
            if (z) {
                this.val$appWidgetManager.notifyAppWidgetViewDataChanged(this.val$appWidgetIds, R.id.gridview);
            }
        }
    }

    public CoverLauncherWidgetViewController(Context context) {
        this.mContext = context;
    }

    public static CoverLauncherWidgetViewController getInstance(Context context) {
        if (mController == null) {
            mController = new CoverLauncherWidgetViewController(context);
        }
        return mController;
    }

    public final void notifyAppWidgetViewDataChanged() {
        Context context = this.mContext;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        for (Class cls : CoverLauncherWidgetUtils.sWidgetClassArray) {
            int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) cls));
            if (appWidgetIds.length > 0) {
                appWidgetManager.notifyAppWidgetViewDataChanged(appWidgetIds, R.id.gridview);
            }
        }
    }
}
