package com.android.systemui.controls.management;

import android.R;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.controls.management.ControlsListingController;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppAdapter extends RecyclerView.Adapter {
    public final Set authorizedPanels;
    public final FavoritesRenderer favoritesRenderer;
    public final LayoutInflater layoutInflater;
    public List listOfServices;
    public final Function1 onAppSelected;
    public final Resources resources;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Holder extends RecyclerView.ViewHolder {
        public final FavoritesRenderer favRenderer;
        public final TextView favorites;
        public final ImageView icon;
        public final TextView title;
        public final View view;

        public Holder(View view, FavoritesRenderer favoritesRenderer) {
            super(view);
            this.favRenderer = favoritesRenderer;
            View view2 = this.itemView;
            this.view = view2;
            this.icon = (ImageView) view2.requireViewById(R.id.icon);
            this.title = (TextView) this.itemView.requireViewById(R.id.title);
            this.favorites = (TextView) this.itemView.requireViewById(com.android.systemui.R.id.favorites);
        }
    }

    public AppAdapter(Executor executor, Executor executor2, Lifecycle lifecycle, ControlsListingController controlsListingController, LayoutInflater layoutInflater, Function1 function1, FavoritesRenderer favoritesRenderer, Resources resources, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(executor, executor2, lifecycle, controlsListingController, layoutInflater, (i & 32) != 0 ? new Function1() { // from class: com.android.systemui.controls.management.AppAdapter.1
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return Unit.INSTANCE;
            }
        } : function1, favoritesRenderer, resources, (i & 256) != 0 ? EmptySet.INSTANCE : set);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.listOfServices.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0044  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r4, final int r5) {
        /*
            r3 = this;
            com.android.systemui.controls.management.AppAdapter$Holder r4 = (com.android.systemui.controls.management.AppAdapter.Holder) r4
            java.util.List r0 = r3.listOfServices
            java.lang.Object r0 = r0.get(r5)
            com.android.systemui.controls.ControlsServiceInfo r0 = (com.android.systemui.controls.ControlsServiceInfo) r0
            android.graphics.drawable.Drawable r1 = r0.loadIcon()
            android.widget.ImageView r2 = r4.icon
            r2.setImageDrawable(r1)
            java.lang.CharSequence r1 = r0.loadLabel()
            android.widget.TextView r2 = r4.title
            r2.setText(r1)
            android.content.ComponentName r1 = r0.panelActivity
            if (r1 != 0) goto L3c
            com.android.systemui.controls.management.FavoritesRenderer r1 = r4.favRenderer
            kotlin.jvm.functions.Function1 r2 = r1.favoriteFunction
            android.content.ComponentName r0 = r0.componentName
            java.lang.Object r0 = r2.invoke(r0)
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 == 0) goto L3c
            android.content.res.Resources r1 = r1.resources
            r2 = 2131952619(0x7f1303eb, float:1.9541686E38)
            java.lang.String r0 = com.android.systemui.util.PluralMessageFormaterKt.icuMessageFormat(r1, r2, r0)
            goto L3d
        L3c:
            r0 = 0
        L3d:
            android.widget.TextView r1 = r4.favorites
            r1.setText(r0)
            if (r0 != 0) goto L47
            r0 = 8
            goto L48
        L47:
            r0 = 0
        L48:
            r1.setVisibility(r0)
            com.android.systemui.controls.management.AppAdapter$onBindViewHolder$1 r0 = new com.android.systemui.controls.management.AppAdapter$onBindViewHolder$1
            r0.<init>()
            android.view.View r3 = r4.view
            r3.setOnClickListener(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.AppAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        return new Holder(this.layoutInflater.inflate(com.android.systemui.R.layout.controls_app_item, (ViewGroup) recyclerView, false), this.favoritesRenderer);
    }

    public AppAdapter(final Executor executor, final Executor executor2, Lifecycle lifecycle, ControlsListingController controlsListingController, LayoutInflater layoutInflater, Function1 function1, FavoritesRenderer favoritesRenderer, Resources resources, Set<String> set) {
        this.layoutInflater = layoutInflater;
        this.onAppSelected = function1;
        this.favoritesRenderer = favoritesRenderer;
        this.resources = resources;
        this.authorizedPanels = set;
        this.listOfServices = EmptyList.INSTANCE;
        controlsListingController.observe(lifecycle, new ControlsListingController.ControlsListingCallback() { // from class: com.android.systemui.controls.management.AppAdapter$callback$1
            @Override // com.android.systemui.controls.management.ControlsListingController.ControlsListingCallback
            public final void onServicesUpdated(final List list) {
                final AppAdapter appAdapter = this;
                final Executor executor3 = executor2;
                executor.execute(new Runnable() { // from class: com.android.systemui.controls.management.AppAdapter$callback$1$onServicesUpdated$1
                    /* JADX WARN: Removed duplicated region for block: B:13:0x004e A[SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:17:0x0027 A[SYNTHETIC] */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void run() {
                        /*
                            r8 = this;
                            com.android.systemui.controls.management.AppAdapter r0 = com.android.systemui.controls.management.AppAdapter.this
                            android.content.res.Resources r0 = r0.resources
                            android.content.res.Configuration r0 = r0.getConfiguration()
                            android.os.LocaleList r0 = r0.getLocales()
                            r1 = 0
                            java.util.Locale r0 = r0.get(r1)
                            java.text.Collator r0 = java.text.Collator.getInstance(r0)
                            com.android.systemui.controls.management.AppAdapter$callback$1$onServicesUpdated$1$run$$inlined$compareBy$1 r2 = new com.android.systemui.controls.management.AppAdapter$callback$1$onServicesUpdated$1$run$$inlined$compareBy$1
                            r2.<init>()
                            com.android.systemui.controls.management.AppAdapter r0 = com.android.systemui.controls.management.AppAdapter.this
                            java.util.List r3 = r2
                            java.util.ArrayList r4 = new java.util.ArrayList
                            r4.<init>()
                            java.util.Iterator r3 = r3.iterator()
                        L27:
                            boolean r5 = r3.hasNext()
                            if (r5 == 0) goto L52
                            java.lang.Object r5 = r3.next()
                            r6 = r5
                            com.android.systemui.controls.ControlsServiceInfo r6 = (com.android.systemui.controls.ControlsServiceInfo) r6
                            android.content.ComponentName r6 = r6.panelActivity
                            if (r6 == 0) goto L4b
                            java.util.Set r7 = r0.authorizedPanels
                            if (r6 == 0) goto L41
                            java.lang.String r6 = r6.getPackageName()
                            goto L42
                        L41:
                            r6 = 0
                        L42:
                            boolean r6 = kotlin.collections.CollectionsKt___CollectionsKt.contains(r7, r6)
                            if (r6 != 0) goto L49
                            goto L4b
                        L49:
                            r6 = r1
                            goto L4c
                        L4b:
                            r6 = 1
                        L4c:
                            if (r6 == 0) goto L27
                            r4.add(r5)
                            goto L27
                        L52:
                            java.util.List r1 = kotlin.collections.CollectionsKt___CollectionsKt.sortedWith(r4, r2)
                            r0.listOfServices = r1
                            java.util.concurrent.Executor r0 = r3
                            com.android.systemui.controls.management.AppAdapter r8 = com.android.systemui.controls.management.AppAdapter.this
                            com.android.systemui.controls.management.AppAdapter$callback$1$onServicesUpdated$1$2 r1 = new com.android.systemui.controls.management.AppAdapter$callback$1$onServicesUpdated$1$2
                            r1.<init>()
                            r0.execute(r1)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.AppAdapter$callback$1$onServicesUpdated$1.run():void");
                    }
                });
            }
        });
    }
}
