package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouteDynamicChooserDialog extends AppCompatDialog {
    public RecyclerAdapter mAdapter;
    public boolean mAttachedToWindow;
    public final MediaRouterCallback mCallback;
    public final Context mContext;
    public final AnonymousClass1 mHandler;
    public long mLastUpdateTime;
    public RecyclerView mRecyclerView;
    public final MediaRouter mRouter;
    public List mRoutes;
    public MediaRouter.RouteInfo mSelectingRoute;
    public MediaRouteSelector mSelector;
    public final long mUpdateRoutesDelayMs;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteAdded(MediaRouter mediaRouter) {
            MediaRouteDynamicChooserDialog.this.refreshRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicChooserDialog.this.refreshRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteRemoved(MediaRouter mediaRouter) {
            MediaRouteDynamicChooserDialog.this.refreshRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteSelected(MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicChooserDialog.this.dismiss();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RecyclerAdapter extends RecyclerView.Adapter {
        public final Drawable mDefaultIcon;
        public final LayoutInflater mInflater;
        public final ArrayList mItems = new ArrayList();
        public final Drawable mSpeakerGroupIcon;
        public final Drawable mSpeakerIcon;
        public final Drawable mTvIcon;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class HeaderViewHolder extends RecyclerView.ViewHolder {
            public final TextView mTextView;

            public HeaderViewHolder(RecyclerAdapter recyclerAdapter, View view) {
                super(view);
                this.mTextView = (TextView) view.findViewById(R.id.mr_picker_header_name);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Item {
            public final Object mData;
            public final int mType;

            public Item(RecyclerAdapter recyclerAdapter, Object obj) {
                this.mData = obj;
                if (obj instanceof String) {
                    this.mType = 1;
                } else if (obj instanceof MediaRouter.RouteInfo) {
                    this.mType = 2;
                } else {
                    this.mType = 0;
                    Log.w("RecyclerAdapter", "Wrong type of data passed to Item constructor");
                }
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class RouteViewHolder extends RecyclerView.ViewHolder {
            public final ImageView mImageView;
            public final View mItemView;
            public final ProgressBar mProgressBar;
            public final TextView mTextView;

            public RouteViewHolder(View view) {
                super(view);
                this.mItemView = view;
                this.mImageView = (ImageView) view.findViewById(R.id.mr_picker_route_icon);
                ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_picker_route_progress_bar);
                this.mProgressBar = progressBar;
                this.mTextView = (TextView) view.findViewById(R.id.mr_picker_route_name);
                MediaRouterThemeHelper.setIndeterminateProgressBarColor(MediaRouteDynamicChooserDialog.this.mContext, progressBar);
            }
        }

        public RecyclerAdapter() {
            this.mInflater = LayoutInflater.from(MediaRouteDynamicChooserDialog.this.mContext);
            this.mDefaultIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteDefaultIconDrawable, MediaRouteDynamicChooserDialog.this.mContext);
            this.mTvIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteTvIconDrawable, MediaRouteDynamicChooserDialog.this.mContext);
            this.mSpeakerIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteSpeakerIconDrawable, MediaRouteDynamicChooserDialog.this.mContext);
            this.mSpeakerGroupIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteSpeakerGroupIconDrawable, MediaRouteDynamicChooserDialog.this.mContext);
            rebuildItems();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.mItems.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            return ((Item) this.mItems.get(i)).mType;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
        
            if (r1 != null) goto L24;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r8, int r9) {
            /*
                r7 = this;
                int r0 = r7.getItemViewType(r9)
                java.util.ArrayList r7 = r7.mItems
                java.lang.Object r7 = r7.get(r9)
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$Item r7 = (androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.Item) r7
                r9 = 1
                if (r0 == r9) goto L89
                java.lang.String r1 = "RecyclerAdapter"
                r2 = 2
                if (r0 == r2) goto L1b
                java.lang.String r7 = "Cannot bind item to ViewHolder because of wrong view type"
                android.util.Log.w(r1, r7)
                goto L96
            L1b:
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder r8 = (androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.RouteViewHolder) r8
                java.lang.Object r7 = r7.mData
                androidx.mediarouter.media.MediaRouter$RouteInfo r7 = (androidx.mediarouter.media.MediaRouter.RouteInfo) r7
                r0 = 0
                android.view.View r3 = r8.mItemView
                r3.setVisibility(r0)
                android.widget.ProgressBar r0 = r8.mProgressBar
                r4 = 4
                r0.setVisibility(r4)
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1 r0 = new androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1
                r0.<init>()
                r3.setOnClickListener(r0)
                java.lang.String r0 = r7.mName
                android.widget.TextView r3 = r8.mTextView
                r3.setText(r0)
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter r0 = androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.this
                r0.getClass()
                android.net.Uri r3 = r7.mIconUri
                if (r3 == 0) goto L6b
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog r4 = androidx.mediarouter.app.MediaRouteDynamicChooserDialog.this     // Catch: java.io.IOException -> L59
                android.content.Context r4 = r4.mContext     // Catch: java.io.IOException -> L59
                android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.io.IOException -> L59
                java.io.InputStream r4 = r4.openInputStream(r3)     // Catch: java.io.IOException -> L59
                r5 = 0
                android.graphics.drawable.Drawable r1 = android.graphics.drawable.Drawable.createFromStream(r4, r5)     // Catch: java.io.IOException -> L59
                if (r1 == 0) goto L6b
                goto L83
            L59:
                r4 = move-exception
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                java.lang.String r6 = "Failed to load "
                r5.<init>(r6)
                r5.append(r3)
                java.lang.String r3 = r5.toString()
                android.util.Log.w(r1, r3, r4)
            L6b:
                int r1 = r7.mDeviceType
                if (r1 == r9) goto L80
                if (r1 == r2) goto L7d
                boolean r7 = r7.isGroup()
                if (r7 == 0) goto L7a
                android.graphics.drawable.Drawable r7 = r0.mSpeakerGroupIcon
                goto L82
            L7a:
                android.graphics.drawable.Drawable r7 = r0.mDefaultIcon
                goto L82
            L7d:
                android.graphics.drawable.Drawable r7 = r0.mSpeakerIcon
                goto L82
            L80:
                android.graphics.drawable.Drawable r7 = r0.mTvIcon
            L82:
                r1 = r7
            L83:
                android.widget.ImageView r7 = r8.mImageView
                r7.setImageDrawable(r1)
                goto L96
            L89:
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$HeaderViewHolder r8 = (androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.HeaderViewHolder) r8
                java.lang.Object r7 = r7.mData
                java.lang.String r7 = r7.toString()
                android.widget.TextView r8 = r8.mTextView
                r8.setText(r7)
            L96:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
            LayoutInflater layoutInflater = this.mInflater;
            if (i != 1) {
                if (i != 2) {
                    Log.w("RecyclerAdapter", "Cannot create ViewHolder because of wrong view type");
                    return null;
                }
                return new RouteViewHolder(layoutInflater.inflate(R.layout.mr_picker_route_item, (ViewGroup) recyclerView, false));
            }
            return new HeaderViewHolder(this, layoutInflater.inflate(R.layout.mr_picker_header_item, (ViewGroup) recyclerView, false));
        }

        public final void rebuildItems() {
            ArrayList arrayList = this.mItems;
            arrayList.clear();
            MediaRouteDynamicChooserDialog mediaRouteDynamicChooserDialog = MediaRouteDynamicChooserDialog.this;
            arrayList.add(new Item(this, mediaRouteDynamicChooserDialog.mContext.getString(R.string.mr_chooser_title)));
            Iterator it = mediaRouteDynamicChooserDialog.mRoutes.iterator();
            while (it.hasNext()) {
                arrayList.add(new Item(this, (MediaRouter.RouteInfo) it.next()));
            }
            notifyDataSetChanged();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RouteComparator implements Comparator {
        public static final RouteComparator sInstance = new RouteComparator();

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((MediaRouter.RouteInfo) obj).mName.compareToIgnoreCase(((MediaRouter.RouteInfo) obj2).mName);
        }
    }

    public MediaRouteDynamicChooserDialog(Context context) {
        this(context, 0);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(this.mSelector, this.mCallback, 1);
        refreshRoutes();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int dialogWidth;
        super.onCreate(bundle);
        setContentView(R.layout.mr_picker_dialog);
        MediaRouterThemeHelper.setDialogBackgroundColor(this.mContext, this);
        this.mRoutes = new ArrayList();
        ((ImageButton) findViewById(R.id.mr_picker_close_button)).setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicChooserDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaRouteDynamicChooserDialog.this.dismiss();
            }
        });
        this.mAdapter = new RecyclerAdapter();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_picker_list);
        this.mRecyclerView = recyclerView;
        recyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
        Context context = this.mContext;
        int i = -1;
        if (!context.getResources().getBoolean(R.bool.is_tablet)) {
            dialogWidth = -1;
        } else {
            dialogWidth = MediaRouteDialogHelper.getDialogWidth(context);
        }
        if (this.mContext.getResources().getBoolean(R.bool.is_tablet)) {
            i = -2;
        }
        getWindow().setLayout(dialogWidth, i);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAttachedToWindow = false;
        this.mRouter.removeCallback(this.mCallback);
        removeMessages(1);
    }

    public final void refreshRoutes() {
        Collection collection;
        if (this.mSelectingRoute == null && this.mAttachedToWindow) {
            this.mRouter.getClass();
            MediaRouter.checkCallingThread();
            MediaRouter.GlobalMediaRouter globalRouter = MediaRouter.getGlobalRouter();
            if (globalRouter == null) {
                collection = Collections.emptyList();
            } else {
                collection = globalRouter.mRoutes;
            }
            ArrayList arrayList = new ArrayList(collection);
            int size = arrayList.size();
            while (true) {
                int i = size - 1;
                boolean z = true;
                if (size <= 0) {
                    break;
                }
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) arrayList.get(i);
                if (routeInfo.isDefaultOrBluetooth() || !routeInfo.mEnabled || !routeInfo.matchesSelector(this.mSelector)) {
                    z = false;
                }
                if (!z) {
                    arrayList.remove(i);
                }
                size = i;
            }
            Collections.sort(arrayList, RouteComparator.sInstance);
            if (SystemClock.uptimeMillis() - this.mLastUpdateTime >= this.mUpdateRoutesDelayMs) {
                this.mLastUpdateTime = SystemClock.uptimeMillis();
                ((ArrayList) this.mRoutes).clear();
                ((ArrayList) this.mRoutes).addAll(arrayList);
                this.mAdapter.rebuildItems();
                return;
            }
            removeMessages(1);
            AnonymousClass1 anonymousClass1 = this.mHandler;
            anonymousClass1.sendMessageAtTime(anonymousClass1.obtainMessage(1, arrayList), this.mLastUpdateTime + this.mUpdateRoutesDelayMs);
        }
    }

    public final void setRouteSelector(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            if (!this.mSelector.equals(mediaRouteSelector)) {
                this.mSelector = mediaRouteSelector;
                if (this.mAttachedToWindow) {
                    this.mRouter.removeCallback(this.mCallback);
                    this.mRouter.addCallback(mediaRouteSelector, this.mCallback, 1);
                }
                refreshRoutes();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.mediarouter.app.MediaRouteDynamicChooserDialog$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MediaRouteDynamicChooserDialog(android.content.Context r2, int r3) {
        /*
            r1 = this;
            r0 = 0
            android.content.Context r2 = androidx.mediarouter.app.MediaRouterThemeHelper.createThemedDialogContext(r2, r3, r0)
            int r3 = androidx.mediarouter.app.MediaRouterThemeHelper.createThemedDialogStyle(r2)
            r1.<init>(r2, r3)
            androidx.mediarouter.media.MediaRouteSelector r2 = androidx.mediarouter.media.MediaRouteSelector.EMPTY
            r1.mSelector = r2
            androidx.mediarouter.app.MediaRouteDynamicChooserDialog$1 r2 = new androidx.mediarouter.app.MediaRouteDynamicChooserDialog$1
            r2.<init>()
            r1.mHandler = r2
            android.content.Context r2 = r1.getContext()
            androidx.mediarouter.media.MediaRouter r3 = androidx.mediarouter.media.MediaRouter.getInstance(r2)
            r1.mRouter = r3
            androidx.mediarouter.app.MediaRouteDynamicChooserDialog$MediaRouterCallback r3 = new androidx.mediarouter.app.MediaRouteDynamicChooserDialog$MediaRouterCallback
            r3.<init>()
            r1.mCallback = r3
            r1.mContext = r2
            android.content.res.Resources r2 = r2.getResources()
            r3 = 2131427500(0x7f0b00ac, float:1.8476618E38)
            int r2 = r2.getInteger(r3)
            long r2 = (long) r2
            r1.mUpdateRoutesDelayMs = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicChooserDialog.<init>(android.content.Context, int):void");
    }
}
