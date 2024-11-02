package com.android.systemui.qp;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.QSEvents;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QSPanelControllerBase$TileRecord;
import com.android.systemui.qs.QSTileHost;
import com.android.systemui.qs.SecSubScreenQSTileHost;
import com.android.systemui.util.ViewController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenQsPanelControllerBase extends ViewController implements SubscreenQSControllerContract$BaseViewController {
    public final Context mContext;
    public final AnonymousClass1 mDisplayListener;
    public final QSTileHost mHost;
    public final SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0 mQSHostCallback;
    public final SecSubScreenQSTileHost mSubScreenTileHost;
    public final ArrayList mSubscreenRecords;
    public final UiEventLogger mUiEventLogger;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.qp.SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.qp.SubscreenQsPanelControllerBase$1, java.lang.Object] */
    public SubscreenQsPanelControllerBase(SubroomQuickSettingsQSPanelBaseView subroomQuickSettingsQSPanelBaseView, QSTileHost qSTileHost) {
        super(subroomQuickSettingsQSPanelBaseView);
        this.mSubscreenRecords = new ArrayList();
        QSEvents.INSTANCE.getClass();
        this.mUiEventLogger = QSEvents.qsUiEventsLogger;
        this.mQSHostCallback = new QSHost.Callback() { // from class: com.android.systemui.qp.SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0
            @Override // com.android.systemui.qs.QSHost.Callback
            public final void onTilesChanged() {
                SubscreenQsPanelControllerBase.this.setTiles();
            }
        };
        ?? r2 = new DisplayLifecycle.Observer() { // from class: com.android.systemui.qp.SubscreenQsPanelControllerBase.1
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onFolderStateChanged", z, "SubscreenQsPanelControllerBase");
                SubscreenQsPanelControllerBase subscreenQsPanelControllerBase = SubscreenQsPanelControllerBase.this;
                if (z) {
                    subscreenQsPanelControllerBase.setListening(false);
                    subscreenQsPanelControllerBase.removeAllTileViews();
                    SecSubScreenQSTileHost secSubScreenQSTileHost = subscreenQsPanelControllerBase.mSubScreenTileHost;
                    if (secSubScreenQSTileHost != null) {
                        ((ArrayList) secSubScreenQSTileHost.mCallbacks).remove(subscreenQsPanelControllerBase.mQSHostCallback);
                        return;
                    }
                    return;
                }
                SecSubScreenQSTileHost secSubScreenQSTileHost2 = subscreenQsPanelControllerBase.mSubScreenTileHost;
                if (secSubScreenQSTileHost2 != null) {
                    ((ArrayList) secSubScreenQSTileHost2.mCallbacks).add(subscreenQsPanelControllerBase.mQSHostCallback);
                }
                subscreenQsPanelControllerBase.setTiles();
                subscreenQsPanelControllerBase.setListening(true);
                View view = subscreenQsPanelControllerBase.mView;
                if (view != null) {
                    ((SubroomQuickSettingsQSPanelBaseView) view).addPagedTileLayout();
                    ((SubroomQuickSettingsQSPanelBaseView) subscreenQsPanelControllerBase.mView).updateResources();
                }
            }
        };
        this.mDisplayListener = r2;
        new View.OnLongClickListener() { // from class: com.android.systemui.qp.SubscreenQsPanelControllerBase.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).startActivity(SubscreenQsPanelControllerBase.this.mContext, "com.android.systemui.qp.customize.SubscreenCustomizerActivity");
                return true;
            }
        };
        this.mHost = qSTileHost;
        this.mSubScreenTileHost = qSTileHost.mSubScreenTileHost;
        this.mContext = getContext();
        DisplayLifecycle displayLifecycle = (DisplayLifecycle) Dependency.get(DisplayLifecycle.class);
        if (displayLifecycle != 0) {
            displayLifecycle.addObserver(r2);
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        Objects.toString(this.mView);
        SubroomQuickSettingsQSPanelBaseView subroomQuickSettingsQSPanelBaseView = (SubroomQuickSettingsQSPanelBaseView) this.mView;
        if (subroomQuickSettingsQSPanelBaseView.mTileLayout == null) {
            SubscreenPagedTileLayout subscreenPagedTileLayout = (SubscreenPagedTileLayout) LayoutInflater.from(subroomQuickSettingsQSPanelBaseView.mContext).inflate(R.layout.subscreen_paged_tile_layout, (ViewGroup) subroomQuickSettingsQSPanelBaseView, false);
            subroomQuickSettingsQSPanelBaseView.mTileLayout = subscreenPagedTileLayout;
            subscreenPagedTileLayout.setSquishinessFraction();
        }
        subroomQuickSettingsQSPanelBaseView.mTileLayout = subroomQuickSettingsQSPanelBaseView.mTileLayout;
        subroomQuickSettingsQSPanelBaseView.updatePageIndicator$1();
        new SubscreenBrightnessController(this.mContext, (SubroomBrightnessSettingsView) ((SubroomQuickSettingsQSPanelBaseView) this.mView).findViewById(R.id.subroom_brightness_settings)).init();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        Objects.toString(this.mView);
        SecSubScreenQSTileHost secSubScreenQSTileHost = this.mSubScreenTileHost;
        if (secSubScreenQSTileHost != null) {
            ((ArrayList) secSubScreenQSTileHost.mCallbacks).add(this.mQSHostCallback);
        }
        setTiles();
        ((SubroomQuickSettingsQSPanelBaseView) this.mView).addPagedTileLayout();
        ((SubroomQuickSettingsQSPanelBaseView) this.mView).updateResources();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        Objects.toString(this.mView);
        SecSubScreenQSTileHost secSubScreenQSTileHost = this.mSubScreenTileHost;
        if (secSubScreenQSTileHost != null) {
            ((ArrayList) secSubScreenQSTileHost.mCallbacks).remove(this.mQSHostCallback);
        }
        setListening(false);
        removeAllTileViews();
    }

    public final void removeAllTileViews() {
        ArrayList arrayList = this.mSubscreenRecords;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord = (QSPanelControllerBase$TileRecord) it.next();
            View view = this.mView;
            if (view != null) {
                ((SubroomQuickSettingsQSPanelBaseView) view).mTileLayout.removeTile(qSPanelControllerBase$TileRecord);
            }
            qSPanelControllerBase$TileRecord.tile.removeCallback(qSPanelControllerBase$TileRecord.callback);
        }
        arrayList.clear();
    }

    public final void setListening(boolean z) {
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setListening", z, "SubscreenQsPanelControllerBase");
        View view = this.mView;
        if (((SubroomQuickSettingsQSPanelBaseView) view).mListening == z) {
            return;
        }
        ((SubroomQuickSettingsQSPanelBaseView) view).mListening = z;
        if (((SubroomQuickSettingsQSPanelBaseView) view).mTileLayout != null) {
            ((SubroomQuickSettingsQSPanelBaseView) view).mTileLayout.setListening(z, this.mUiEventLogger);
        }
        if (((SubroomQuickSettingsQSPanelBaseView) this.mView).mListening) {
            Log.d("SubscreenQsPanelControllerBase", "refreshAllTiles");
            Iterator it = this.mSubscreenRecords.iterator();
            while (it.hasNext()) {
                QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord = (QSPanelControllerBase$TileRecord) it.next();
                if (!qSPanelControllerBase$TileRecord.tile.isListening()) {
                    qSPanelControllerBase$TileRecord.tile.refreshState();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
    
        r3 = new com.android.systemui.qs.QSPanelControllerBase$TileRecord(r1, r5);
        r1 = (com.android.systemui.qp.SubroomQuickSettingsQSPanelBaseView) r7.mView;
        r1.getClass();
        r4 = new com.android.systemui.qs.QSPanel.AnonymousClass1();
        r5 = r3.tile;
        r5.addCallback(r4);
        r3.callback = r4;
        r3.tileView.init(r5);
        r5.refreshState();
        r1 = r1.mTileLayout;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006a, code lost:
    
        if (r1 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006c, code lost:
    
        r1.addTile(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
    
        r1 = r7.mSubscreenRecords;
        r1.add(r3);
        android.util.Log.d("SubscreenQsPanelControllerBase", "addTile tile.getTileSpec():  record: " + r3 + " mSubscreenRecords.size(): " + r1.size());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setTiles() {
        /*
            r7 = this;
            com.android.systemui.qs.SecSubScreenQSTileHost r0 = r7.mSubScreenTileHost
            if (r0 == 0) goto Lad
            java.util.LinkedHashMap r0 = r0.mTiles
            java.util.Collection r0 = r0.values()
            java.lang.String r1 = "setTiles "
            java.lang.String r2 = "SubscreenQsPanelControllerBase"
            android.util.Log.d(r2, r1)
            r7.removeAllTileViews()
            java.util.Iterator r0 = r0.iterator()
        L19:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lad
            java.lang.Object r1 = r0.next()
            com.android.systemui.plugins.qs.QSTile r1 = (com.android.systemui.plugins.qs.QSTile) r1
            java.lang.String r3 = r1.getTileSpec()
            java.lang.String r4 = "adding Tilespec : "
            android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r4, r3, r2)
            r3 = 0
            r4 = r3
        L30:
            com.android.systemui.qs.QSTileHost r5 = r7.mHost
            java.util.ArrayList r5 = r5.mQsFactories
            int r6 = r5.size()
            if (r4 >= r6) goto L95
            java.lang.Object r5 = r5.get(r4)
            com.android.systemui.plugins.qs.QSFactory r5 = (com.android.systemui.plugins.qs.QSFactory) r5
            android.content.Context r6 = r7.mContext
            com.android.systemui.plugins.qs.QSTileView r5 = r5.createCoverScreenTileView(r6, r1, r3)
            if (r5 == 0) goto L92
            com.android.systemui.qs.QSPanelControllerBase$TileRecord r3 = new com.android.systemui.qs.QSPanelControllerBase$TileRecord
            r3.<init>(r1, r5)
            android.view.View r1 = r7.mView
            com.android.systemui.qp.SubroomQuickSettingsQSPanelBaseView r1 = (com.android.systemui.qp.SubroomQuickSettingsQSPanelBaseView) r1
            r1.getClass()
            com.android.systemui.qs.QSPanel$1 r4 = new com.android.systemui.qs.QSPanel$1
            r4.<init>()
            com.android.systemui.plugins.qs.QSTile r5 = r3.tile
            r5.addCallback(r4)
            r3.callback = r4
            com.android.systemui.plugins.qs.QSTileView r4 = r3.tileView
            r4.init(r5)
            r5.refreshState()
            com.android.systemui.qs.QSPanel$QSTileLayout r1 = r1.mTileLayout
            if (r1 == 0) goto L6f
            r1.addTile(r3)
        L6f:
            java.util.ArrayList r1 = r7.mSubscreenRecords
            r1.add(r3)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "addTile tile.getTileSpec():  record: "
            r4.<init>(r5)
            r4.append(r3)
            java.lang.String r3 = " mSubscreenRecords.size(): "
            r4.append(r3)
            int r1 = r1.size()
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            android.util.Log.d(r2, r1)
            goto L19
        L92:
            int r4 = r4 + 1
            goto L30
        L95:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Default factory didn't create view for "
            r0.<init>(r2)
            java.lang.String r1 = r1.getTileSpec()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            throw r7
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qp.SubscreenQsPanelControllerBase.setTiles():void");
    }
}
