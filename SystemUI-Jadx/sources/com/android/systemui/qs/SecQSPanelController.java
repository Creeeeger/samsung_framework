package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.qs.SecQSPanel;
import com.android.systemui.qs.SecQSPanelControllerBase;
import com.android.systemui.qs.animator.SecQSFragmentAnimatorManager;
import com.android.systemui.qs.bar.BarController;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.shade.NotificationShadeWindowView;
import com.android.systemui.shade.ShadeHeaderController;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.ConfigurationState;
import com.android.systemui.util.SettingsHelper;
import java.util.Arrays;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecQSPanelController extends SecQSPanelControllerBase {
    public final ActivityStarter mActivityStarter;
    public final FalsingManager mFalsingManager;
    public boolean mGridContentVisible;
    public final HideRemovableTileHelper mHideRemovableTileHelper;
    public final ConfigurationState mLastConfigurationState;
    public int mOrientation;
    public PageIndicator mPageIndicator;
    public final QSButtonGridController mQSButtonGridController;
    public SecQSFragmentAnimatorManager mSecAnimatorManager;
    public final NotificationShadeWindowView mStatusBarWindow;
    public final AnonymousClass1 mTileLayoutTouchListener;
    public final Handler mUiHandler;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HideRemovableTileHelper implements TunerService.Tunable {
        public /* synthetic */ HideRemovableTileHelper(SecQSPanelController secQSPanelController, int i) {
            this();
        }

        @Override // com.android.systemui.tuner.TunerService.Tunable
        public final void onTuningChanged(String str, String str2) {
            QSPanelHost qSPanelHost;
            if (QpRune.QUICK_HIDE_TILE_FROM_BAR && (qSPanelHost = SecQSPanelController.this.mQsPanelHost) != null) {
                qSPanelHost.setTiles();
                qSPanelHost.mQsHost.getQQSTileHost().mQSTileHost.refreshTileList();
            }
        }

        private HideRemovableTileHelper() {
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.qs.SecQSPanelController$1] */
    public SecQSPanelController(SecQSPanel secQSPanel, QSHost qSHost, MetricsLogger metricsLogger, UiEventLogger uiEventLogger, QSLogger qSLogger, DumpManager dumpManager, QSPanelHost qSPanelHost, Provider provider, SecQSPanelResourcePicker secQSPanelResourcePicker, FalsingManager falsingManager, StatusBarKeyguardViewManager statusBarKeyguardViewManager, ActivityStarter activityStarter, Handler handler, ShadeHeaderController shadeHeaderController, NotificationShadeWindowView notificationShadeWindowView, QSButtonGridController qSButtonGridController) {
        super(secQSPanel, qSHost, metricsLogger, uiEventLogger, qSLogger, dumpManager, qSPanelHost, (BarController) provider.get(), secQSPanelResourcePicker);
        this.mTileLayoutTouchListener = new View.OnTouchListener() { // from class: com.android.systemui.qs.SecQSPanelController.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 1) {
                    SecQSPanelController.this.mFalsingManager.isFalseTouch(15);
                    return false;
                }
                return false;
            }
        };
        this.mLastConfigurationState = new ConfigurationState(Arrays.asList(ConfigurationState.ConfigurationField.ORIENTATION, ConfigurationState.ConfigurationField.SCREEN_HEIGHT_DP, ConfigurationState.ConfigurationField.DISPLAY_DEVICE_TYPE, ConfigurationState.ConfigurationField.UI_MODE));
        this.mGridContentVisible = true;
        this.mHideRemovableTileHelper = new HideRemovableTileHelper(this, 0);
        this.mFalsingManager = falsingManager;
        this.mActivityStarter = activityStarter;
        this.mUiHandler = handler;
        this.mStatusBarWindow = notificationShadeWindowView;
        this.mQSButtonGridController = qSButtonGridController;
        secQSPanelResourcePicker.mQsPanelController = this;
    }

    @Override // com.android.systemui.qs.SecQSPanelControllerBase
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        String str;
        super.onConfigurationChanged(configuration);
        int i = getContext().getResources().getConfiguration().orientation;
        RecyclerView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onConfigurationChanged currentOrientation = ", i, ",newConfig.orientation = "), configuration.orientation, "SecQSPanelController");
        ConfigurationState configurationState = this.mLastConfigurationState;
        if (configurationState.needToUpdate(configuration) || this.mOrientation != i) {
            this.mOrientation = i;
            if (this.mListening) {
                refreshAllTiles();
            }
            configurationState.update(configuration);
            QSPanelHost qSPanelHost = this.mQsPanelHost;
            qSPanelHost.setTiles();
            updatePanelContents();
            SecQSPanelControllerBase.Record record = this.mDetailRecord;
            if (record != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (record == null || (str = this.mDetailTileSpec) == null) {
                    str = "";
                }
                SecQSPanelControllerBase.TileRecord tileRecord = (SecQSPanelControllerBase.TileRecord) qSPanelHost.mRecords.stream().filter(new QSPanelHost$$ExternalSyntheticLambda5(str, 0)).findFirst().orElse(null);
                if (tileRecord != null && tileRecord != this.mDetailRecord) {
                    this.mDetailRecord = tileRecord;
                }
            }
        }
    }

    @Override // com.android.systemui.qs.SecQSPanelControllerBase, com.android.systemui.util.ViewController
    public final void onInit() {
        super.onInit();
    }

    @Override // com.android.systemui.qs.SecQSPanelControllerBase, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        Optional empty;
        super.onViewAttached();
        if (this.mListening) {
            refreshAllTiles();
        }
        SecQSPanel.QSTileLayout qSTileLayout = this.mTileLayout;
        if (qSTileLayout instanceof PagedTileLayout) {
            empty = Optional.of((PagedTileLayout) qSTileLayout);
        } else {
            empty = Optional.empty();
        }
        empty.ifPresent(new SecQSPanelController$$ExternalSyntheticLambda1(this, 1));
        StringBuilder sb = new StringBuilder("onViewAttached() Settings:");
        QSButtonGridController qSButtonGridController = this.mQSButtonGridController;
        qSButtonGridController.getClass();
        sb.append(QSButtonGridController.isQSButtonGridPopupEnabled());
        Log.d("QSButtonGridController", sb.toString());
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(qSButtonGridController.mSettingListener, qSButtonGridController.mSettingsValueList);
        boolean z = QpRune.QUICK_HIDE_TILE_FROM_BAR;
        if (z) {
            HideRemovableTileHelper hideRemovableTileHelper = this.mHideRemovableTileHelper;
            hideRemovableTileHelper.getClass();
            if (z) {
                ((TunerService) Dependency.get(TunerService.class)).addTunable(hideRemovableTileHelper, "hide_smart_view_large_tile_on_panel");
            }
        }
    }

    @Override // com.android.systemui.qs.SecQSPanelControllerBase, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        Optional empty;
        super.onViewDetached();
        SecQSPanel.QSTileLayout qSTileLayout = this.mTileLayout;
        if (qSTileLayout instanceof PagedTileLayout) {
            empty = Optional.of((PagedTileLayout) qSTileLayout);
        } else {
            empty = Optional.empty();
        }
        empty.ifPresent(new SecQSPanelController$$ExternalSyntheticLambda0());
        StringBuilder sb = new StringBuilder("onViewAttached() Settings:");
        QSButtonGridController qSButtonGridController = this.mQSButtonGridController;
        qSButtonGridController.getClass();
        sb.append(QSButtonGridController.isQSButtonGridPopupEnabled());
        Log.d("QSButtonGridController", sb.toString());
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).unregisterCallback(qSButtonGridController.mSettingListener);
        boolean z = QpRune.QUICK_HIDE_TILE_FROM_BAR;
        if (z) {
            HideRemovableTileHelper hideRemovableTileHelper = this.mHideRemovableTileHelper;
            hideRemovableTileHelper.getClass();
            if (z) {
                ((TunerService) Dependency.get(TunerService.class)).removeTunable(hideRemovableTileHelper);
            }
        }
    }

    public final void setGridContentVisibility(boolean z) {
        int i;
        if (z) {
            i = 0;
        } else {
            i = 4;
        }
        ((SecQSPanel) this.mView).setVisibility(i);
        if (this.mGridContentVisible == z) {
            return;
        }
        this.mMetricsLogger.visibility(111, i);
        this.mGridContentVisible = z;
    }

    @Override // com.android.systemui.qs.SecQSPanelControllerBase
    public final void updatePaddingAndMargins() {
        Context context = getContext();
        this.mResourcePicker.getClass();
        int panelSidePadding = SecQSPanelResourcePicker.getPanelSidePadding(context);
        SecQSPanel secQSPanel = (SecQSPanel) this.mView;
        secQSPanel.setPadding(panelSidePadding, secQSPanel.getPaddingTop(), panelSidePadding, ((SecQSPanel) this.mView).getPaddingBottom());
    }

    @Override // com.android.systemui.qs.SecQSPanelControllerBase
    public final void updatePanelContents() {
        Optional empty;
        Optional empty2;
        addBarItems();
        PageIndicator pageIndicator = (PageIndicator) ((SecQSPanel) this.mView).findViewById(R.id.panel_page_indicator);
        this.mPageIndicator = pageIndicator;
        int i = 0;
        if (pageIndicator != null) {
            pageIndicator.setVisibility(8);
            SecQSPanel.QSTileLayout qSTileLayout = this.mTileLayout;
            if (qSTileLayout instanceof PagedTileLayout) {
                empty2 = Optional.of((PagedTileLayout) qSTileLayout);
            } else {
                empty2 = Optional.empty();
            }
            empty2.ifPresent(new SecQSPanelController$$ExternalSyntheticLambda1(this, i));
        }
        PageIndicator pageIndicator2 = this.mPageIndicator;
        if (pageIndicator2 != null) {
            pageIndicator2.setVisibility(8);
            SecQSPanel.QSTileLayout qSTileLayout2 = this.mTileLayout;
            if (qSTileLayout2 instanceof PagedTileLayout) {
                empty = Optional.of((PagedTileLayout) qSTileLayout2);
            } else {
                empty = Optional.empty();
            }
            empty.ifPresent(new SecQSPanelController$$ExternalSyntheticLambda1(this, i));
        }
    }
}
