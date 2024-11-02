package com.android.systemui.controls.management;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.service.controls.Control;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.controls.controller.ControlInfo;
import com.android.systemui.controls.controller.ControlsController;
import com.android.systemui.controls.controller.ControlsControllerImpl;
import com.android.systemui.controls.controller.Favorites;
import com.android.systemui.controls.controller.StructureInfo;
import com.android.systemui.controls.management.ControlsListingController;
import com.android.systemui.controls.panels.AuthorizedPanelsRepositoryImpl;
import com.android.systemui.controls.ui.RenderInfo;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ControlsRequestDialog extends ComponentActivity implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
    public Control control;
    public ComponentName controlComponent;
    public final ControlsController controller;
    public final ControlsListingController controlsListingController;
    public Dialog dialog;
    public final Executor mainExecutor;
    public final UserTracker userTracker;
    public final ControlsRequestDialog$callback$1 callback = new ControlsListingController.ControlsListingCallback() { // from class: com.android.systemui.controls.management.ControlsRequestDialog$callback$1
        @Override // com.android.systemui.controls.management.ControlsListingController.ControlsListingCallback
        public final void onServicesUpdated(List list) {
        }
    };
    public final UserTracker.Callback userTrackerCallback = new UserTracker.Callback() { // from class: com.android.systemui.controls.management.ControlsRequestDialog$userTrackerCallback$1
        public final int startingUser;

        {
            this.startingUser = ((ControlsControllerImpl) ControlsRequestDialog.this.controller).getCurrentUserId();
        }

        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            if (i != this.startingUser) {
                ControlsRequestDialog controlsRequestDialog = ControlsRequestDialog.this;
                ((UserTrackerImpl) controlsRequestDialog.userTracker).removeCallback(this);
                controlsRequestDialog.finish();
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.controls.management.ControlsRequestDialog$callback$1] */
    public ControlsRequestDialog(Executor executor, ControlsController controlsController, UserTracker userTracker, ControlsListingController controlsListingController) {
        this.mainExecutor = executor;
        this.controller = controlsController;
        this.userTracker = userTracker;
        this.controlsListingController = controlsListingController;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            ControlsController controlsController = this.controller;
            final ComponentName componentName = this.controlComponent;
            Control control = null;
            if (componentName == null) {
                componentName = null;
            }
            Control control2 = this.control;
            if (control2 == null) {
                control2 = null;
            }
            final CharSequence structure = control2.getStructure();
            if (structure == null) {
                structure = "";
            }
            Control control3 = this.control;
            if (control3 == null) {
                control3 = null;
            }
            String controlId = control3.getControlId();
            Control control4 = this.control;
            if (control4 == null) {
                control4 = null;
            }
            CharSequence title = control4.getTitle();
            Control control5 = this.control;
            if (control5 == null) {
                control5 = null;
            }
            CharSequence subtitle = control5.getSubtitle();
            Control control6 = this.control;
            if (control6 != null) {
                control = control6;
            }
            final ControlInfo controlInfo = new ControlInfo(controlId, title, subtitle, control.getDeviceType());
            final ControlsControllerImpl controlsControllerImpl = (ControlsControllerImpl) controlsController;
            if (controlsControllerImpl.confirmAvailability()) {
                ((ExecutorImpl) controlsControllerImpl.executor).execute(new Runnable() { // from class: com.android.systemui.controls.controller.ControlsControllerImpl$addFavorite$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Favorites favorites = Favorites.INSTANCE;
                        ComponentName componentName2 = componentName;
                        CharSequence charSequence = structure;
                        ControlInfo controlInfo2 = controlInfo;
                        favorites.getClass();
                        if (Favorites.addFavorite(componentName2, charSequence, controlInfo2)) {
                            ((AuthorizedPanelsRepositoryImpl) controlsControllerImpl.authorizedPanelsRepository).addAuthorizedPanels(Collections.singleton(componentName.getPackageName()));
                            controlsControllerImpl.persistenceWrapper.storeFavorites(Favorites.getAllStructures());
                        }
                    }
                });
            }
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((UserTrackerImpl) this.userTracker).addCallback(this.userTrackerCallback, this.mainExecutor);
        ((ControlsListingControllerImpl) this.controlsListingController).addCallback(this.callback);
        int intExtra = getIntent().getIntExtra("android.intent.extra.USER_ID", -10000);
        int currentUserId = ((ControlsControllerImpl) this.controller).getCurrentUserId();
        if (intExtra != currentUserId) {
            Log.w("ControlsRequestDialog", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("Current user (", currentUserId, ") different from request user (", intExtra, ")"));
            finish();
        }
        ComponentName componentName = (ComponentName) getIntent().getParcelableExtra("android.intent.extra.COMPONENT_NAME");
        if (componentName == null) {
            Log.e("ControlsRequestDialog", "Request did not contain componentName");
            finish();
            return;
        }
        this.controlComponent = componentName;
        Control control = (Control) getIntent().getParcelableExtra("android.service.controls.extra.CONTROL");
        if (control == null) {
            Log.e("ControlsRequestDialog", "Request did not contain control");
            finish();
        } else {
            this.control = control;
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        Dialog dialog = this.dialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        ((UserTrackerImpl) this.userTracker).removeCallback(this.userTrackerCallback);
        ((ControlsListingControllerImpl) this.controlsListingController).removeCallback(this.callback);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onResume() {
        boolean z;
        boolean z2;
        super.onResume();
        ControlsListingController controlsListingController = this.controlsListingController;
        ComponentName componentName = this.controlComponent;
        ComponentName componentName2 = null;
        if (componentName == null) {
            componentName = null;
        }
        CharSequence appLabel = ((ControlsListingControllerImpl) controlsListingController).getAppLabel(componentName);
        if (appLabel == null) {
            ComponentName componentName3 = this.controlComponent;
            if (componentName3 != null) {
                componentName2 = componentName3;
            }
            Log.e("ControlsRequestDialog", "The component specified (" + componentName2.flattenToString() + " is not a valid ControlsProviderService");
            finish();
            return;
        }
        ControlsController controlsController = this.controller;
        ComponentName componentName4 = this.controlComponent;
        if (componentName4 == null) {
            componentName4 = null;
        }
        ((ControlsControllerImpl) controlsController).getClass();
        Favorites.INSTANCE.getClass();
        List structuresForComponent = Favorites.getStructuresForComponent(componentName4);
        if (!(structuresForComponent instanceof Collection) || !structuresForComponent.isEmpty()) {
            Iterator it = structuresForComponent.iterator();
            while (it.hasNext()) {
                List list = ((StructureInfo) it.next()).controls;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        String str = ((ControlInfo) it2.next()).controlId;
                        Control control = this.control;
                        if (control == null) {
                            control = null;
                        }
                        if (Intrinsics.areEqual(str, control.getControlId())) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (z2) {
            Control control2 = this.control;
            if (control2 == null) {
                control2 = null;
            }
            Log.w("ControlsRequestDialog", "The control " + ((Object) control2.getTitle()) + " is already a favorite");
            finish();
        }
        RenderInfo.Companion companion = RenderInfo.Companion;
        ComponentName componentName5 = this.controlComponent;
        if (componentName5 == null) {
            componentName5 = null;
        }
        Control control3 = this.control;
        if (control3 == null) {
            control3 = null;
        }
        int deviceType = control3.getDeviceType();
        companion.getClass();
        RenderInfo lookup = RenderInfo.Companion.lookup(this, componentName5, deviceType, 0);
        View inflate = LayoutInflater.from(this).inflate(R.layout.controls_dialog, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.requireViewById(R.id.icon);
        imageView.setImageDrawable(lookup.icon);
        imageView.setImageTintList(imageView.getContext().getResources().getColorStateList(lookup.foreground, imageView.getContext().getTheme()));
        TextView textView = (TextView) inflate.requireViewById(R.id.title);
        Control control4 = this.control;
        if (control4 == null) {
            control4 = null;
        }
        textView.setText(control4.getTitle());
        TextView textView2 = (TextView) inflate.requireViewById(R.id.subtitle);
        Control control5 = this.control;
        if (control5 == null) {
            control5 = null;
        }
        textView2.setText(control5.getSubtitle());
        inflate.requireViewById(R.id.control).setElevation(inflate.getResources().getFloat(R.dimen.control_card_elevation));
        AlertDialog create = new AlertDialog.Builder(this).setTitle(getString(R.string.controls_dialog_title)).setMessage(getString(R.string.controls_dialog_message, new Object[]{appLabel})).setPositiveButton(R.string.controls_dialog_ok, this).setNegativeButton(android.R.string.cancel, this).setOnCancelListener(this).setView(inflate).create();
        SystemUIDialog.registerDismissListener(create, null);
        create.setCanceledOnTouchOutside(true);
        this.dialog = create;
        create.show();
    }
}
