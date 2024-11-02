package com.android.systemui.qs.customize;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toolbar;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.R;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.qs.QSEditEvent;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QSUtils;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.LightBarController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.ViewController;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSCustomizerController extends ViewController {
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass3 mConfigurationListener;
    public final AnonymousClass2 mKeyguardCallback;
    public final KeyguardStateController mKeyguardStateController;
    public final LightBarController mLightBarController;
    public final AnonymousClass1 mOnMenuItemClickListener;
    public final ScreenLifecycle mScreenLifecycle;
    public final TileAdapter mTileAdapter;
    public final TileQueryHelper mTileQueryHelper;
    public final Toolbar mToolbar;
    public final UiEventLogger mUiEventLogger;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.qs.customize.QSCustomizerController$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.qs.customize.QSCustomizerController$2] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.qs.customize.QSCustomizerController$3] */
    public QSCustomizerController(QSCustomizer qSCustomizer, TileQueryHelper tileQueryHelper, QSHost qSHost, TileAdapter tileAdapter, ScreenLifecycle screenLifecycle, KeyguardStateController keyguardStateController, LightBarController lightBarController, ConfigurationController configurationController, UiEventLogger uiEventLogger) {
        super(qSCustomizer);
        this.mOnMenuItemClickListener = new Toolbar.OnMenuItemClickListener() { // from class: com.android.systemui.qs.customize.QSCustomizerController.1
            @Override // android.widget.Toolbar.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                if (menuItem.getItemId() == 1) {
                    QSCustomizerController.this.mUiEventLogger.log(QSEditEvent.QS_EDIT_RESET);
                    QSCustomizerController qSCustomizerController = QSCustomizerController.this;
                    List defaultSpecs = QSHost.getDefaultSpecs(qSCustomizerController.getContext().getResources());
                    TileAdapter tileAdapter2 = qSCustomizerController.mTileAdapter;
                    tileAdapter2.mHost.changeTilesByUser(tileAdapter2.mCurrentSpecs, defaultSpecs);
                    if (!((ArrayList) defaultSpecs).equals(tileAdapter2.mCurrentSpecs)) {
                        tileAdapter2.mCurrentSpecs = defaultSpecs;
                        return false;
                    }
                    return false;
                }
                return false;
            }
        };
        this.mKeyguardCallback = new KeyguardStateController.Callback() { // from class: com.android.systemui.qs.customize.QSCustomizerController.2
            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onKeyguardShowingChanged() {
                QSCustomizerController qSCustomizerController = QSCustomizerController.this;
                if (((QSCustomizer) qSCustomizerController.mView).isAttachedToWindow() && ((KeyguardStateControllerImpl) qSCustomizerController.mKeyguardStateController).mShowing) {
                    ((QSCustomizer) qSCustomizerController.mView).getClass();
                    qSCustomizerController.hide();
                }
            }
        };
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.qs.customize.QSCustomizerController.3
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                QSCustomizerController qSCustomizerController = QSCustomizerController.this;
                ((QSCustomizer) qSCustomizerController.mView).updateNavBackDrop(configuration, qSCustomizerController.mLightBarController);
                QSCustomizer qSCustomizer2 = (QSCustomizer) qSCustomizerController.mView;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) qSCustomizer2.mTransparentView.getLayoutParams();
                int i = QSUtils.$r8$clinit;
                boolean z = false;
                layoutParams.height = 0;
                qSCustomizer2.mTransparentView.setLayoutParams(layoutParams);
                qSCustomizer2.mRecyclerView.mAdapter.notifyItemChanged(0);
                TileAdapter tileAdapter2 = qSCustomizerController.mTileAdapter;
                int integer = tileAdapter2.mContext.getResources().getInteger(R.integer.quick_settings_num_columns);
                if (integer != tileAdapter2.mNumColumns) {
                    tileAdapter2.mNumColumns = integer;
                    z = true;
                }
                if (z) {
                    RecyclerView.LayoutManager layoutManager$1 = ((QSCustomizer) qSCustomizerController.mView).mRecyclerView.getLayoutManager$1();
                    if (layoutManager$1 instanceof GridLayoutManager) {
                        ((GridLayoutManager) layoutManager$1).setSpanCount(tileAdapter2.mNumColumns);
                    }
                }
            }
        };
        this.mTileQueryHelper = tileQueryHelper;
        this.mTileAdapter = tileAdapter;
        this.mScreenLifecycle = screenLifecycle;
        this.mKeyguardStateController = keyguardStateController;
        this.mLightBarController = lightBarController;
        this.mConfigurationController = configurationController;
        this.mUiEventLogger = uiEventLogger;
        this.mToolbar = (Toolbar) ((QSCustomizer) this.mView).findViewById(android.R.id.afterDescendants);
    }

    public final void hide() {
        int i = this.mScreenLifecycle.mScreenState;
        if (((QSCustomizer) this.mView).isShown()) {
            this.mUiEventLogger.log(QSEditEvent.QS_EDIT_CLOSED);
            this.mToolbar.dismissPopupMenus();
            QSCustomizer qSCustomizer = (QSCustomizer) this.mView;
            qSCustomizer.mCustomizing = false;
            qSCustomizer.mQs.notifyCustomizeChanged();
            this.mTileQueryHelper.getClass();
            ((QSCustomizer) this.mView).getClass();
            boolean z = ((QSCustomizer) this.mView).mIsShowingNavBackdrop;
            LightBarController lightBarController = this.mLightBarController;
            if (lightBarController.mQsCustomizing) {
                lightBarController.mQsCustomizing = false;
                lightBarController.reevaluate();
            }
            ((KeyguardStateControllerImpl) this.mKeyguardStateController).removeCallback(this.mKeyguardCallback);
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        ((QSCustomizer) this.mView).updateNavBackDrop(getResources().getConfiguration(), this.mLightBarController);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
        this.mTileQueryHelper.getClass();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.qs_tile_margin_horizontal) / 2;
        TileAdapter tileAdapter = this.mTileAdapter;
        tileAdapter.mMarginDecoration.mHalfMargin = dimensionPixelSize;
        final RecyclerView recyclerView = ((QSCustomizer) this.mView).mRecyclerView;
        recyclerView.setAdapter(tileAdapter);
        tileAdapter.mItemTouchHelper.attachToRecyclerView(recyclerView);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), tileAdapter.mNumColumns) { // from class: com.android.systemui.qs.customize.QSCustomizerController.4
            @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
            public final void calculateItemDecorationsForChild(Rect rect, View view) {
                if (!(view instanceof TextView)) {
                    rect.setEmpty();
                    QSCustomizerController.this.mTileAdapter.mMarginDecoration.getItemOffsets(rect, view, recyclerView, new RecyclerView.State());
                    ((ViewGroup.MarginLayoutParams) ((GridLayoutManager.LayoutParams) view.getLayoutParams())).leftMargin = rect.left;
                    ((ViewGroup.MarginLayoutParams) ((GridLayoutManager.LayoutParams) view.getLayoutParams())).rightMargin = rect.right;
                }
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public final void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            }
        };
        gridLayoutManager.mSpanSizeLookup = tileAdapter.mSizeLookup;
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.addItemDecoration(tileAdapter.mDecoration);
        recyclerView.addItemDecoration(tileAdapter.mMarginDecoration);
        Toolbar toolbar = this.mToolbar;
        toolbar.setOnMenuItemClickListener(this.mOnMenuItemClickListener);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.customize.QSCustomizerController$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QSCustomizerController.this.hide();
            }
        });
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        this.mTileQueryHelper.getClass();
        this.mToolbar.setOnMenuItemClickListener(null);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
    }
}
