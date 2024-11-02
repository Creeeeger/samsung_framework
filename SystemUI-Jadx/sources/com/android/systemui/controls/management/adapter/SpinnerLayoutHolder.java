package com.android.systemui.controls.management.adapter;

import android.content.ComponentName;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ControlsServiceInfo;
import com.android.systemui.controls.controller.ComponentInfo;
import com.android.systemui.controls.controller.util.BadgeProvider;
import com.android.systemui.controls.controller.util.BadgeProviderImpl;
import com.android.systemui.controls.management.model.MainComponentModel;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.panels.CustomSelectedComponentRepository;
import com.android.systemui.controls.panels.CustomSelectedComponentRepositoryImpl;
import com.android.systemui.controls.ui.ControlsSelectionItem;
import com.android.systemui.controls.ui.CustomControlsUiControllerImpl;
import com.android.systemui.controls.ui.CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;
import com.android.systemui.controls.ui.SelectedItem;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.ui.util.SALogger;
import com.android.systemui.controls.ui.view.ControlsAppCompatSpinner;
import com.android.systemui.controls.ui.view.ControlsSpinner;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SpinnerLayoutHolder extends Holder {
    public final View.OnClickListener buttonClickCallback;
    public final Button launchButton;
    public final LinearLayout launchButtonLayout;
    public final ControlsSpinner spinner;

    public SpinnerLayoutHolder(View view, ControlsSpinner.SpinnerTouchCallback spinnerTouchCallback, ControlsSpinner.SpinnerItemSelectionChangedCallback spinnerItemSelectionChangedCallback, View.OnClickListener onClickListener, BadgeProvider badgeProvider) {
        super(view, null);
        this.buttonClickCallback = onClickListener;
        ControlsSpinner controlsSpinner = (ControlsSpinner) view.requireViewById(R.id.controls_spinner);
        this.spinner = controlsSpinner;
        this.launchButtonLayout = (LinearLayout) view.requireViewById(R.id.launch_button_layout);
        Button button = (Button) view.requireViewById(R.id.launch_button);
        this.launchButton = button;
        controlsSpinner.spinnerTouchCallback = spinnerTouchCallback;
        controlsSpinner.spinnerItemSelectedChangedCallback = spinnerItemSelectionChangedCallback;
        if (BasicRune.CONTROLS_BADGE) {
            controlsSpinner.badgeProvider = badgeProvider;
        }
        if (BasicRune.CONTROLS_PROVIDER_INFO) {
            button.setOnClickListener(onClickListener);
            ControlsUtil.Companion.updateFontSize$default(ControlsUtil.Companion, button, R.dimen.controls_launch_button_text_size);
        }
    }

    @Override // com.android.systemui.controls.management.adapter.Holder
    public final void bindData(MainModel mainModel) {
        CharSequence charSequence;
        if (!(mainModel instanceof MainComponentModel)) {
            return;
        }
        Object obj = null;
        ControlsAppCompatSpinner controlsAppCompatSpinner = null;
        if (BasicRune.CONTROLS_PROVIDER_INFO) {
            boolean z = ((MainComponentModel) mainModel).showButton;
            Button button = this.launchButton;
            LinearLayout linearLayout = this.launchButtonLayout;
            if (z) {
                linearLayout.setVisibility(0);
                button.setOnClickListener(this.buttonClickCallback);
            } else {
                linearLayout.setVisibility(8);
                button.setOnClickListener(null);
            }
        }
        MainComponentModel mainComponentModel = (MainComponentModel) mainModel;
        List list = mainComponentModel.controlsSpinnerInfo;
        ComponentName componentName = mainComponentModel.selected;
        final ControlsSpinner controlsSpinner = this.spinner;
        controlsSpinner.getClass();
        if (list.size() <= 1) {
            TextView textView = controlsSpinner.noSpinner;
            if (textView == null) {
                textView = null;
            }
            ControlsSpinner.SelectionItem selectionItem = (ControlsSpinner.SelectionItem) CollectionsKt___CollectionsKt.firstOrNull(list);
            if (selectionItem != null) {
                charSequence = selectionItem.getAppName();
            } else {
                charSequence = null;
            }
            textView.setText(charSequence);
            TextView textView2 = controlsSpinner.noSpinner;
            if (textView2 == null) {
                textView2 = null;
            }
            textView2.setVisibility(0);
            ControlsAppCompatSpinner controlsAppCompatSpinner2 = controlsSpinner.spinner;
            if (controlsAppCompatSpinner2 != null) {
                controlsAppCompatSpinner = controlsAppCompatSpinner2;
            }
            controlsAppCompatSpinner.setVisibility(8);
            return;
        }
        TextView textView3 = controlsSpinner.noSpinner;
        if (textView3 == null) {
            textView3 = null;
        }
        textView3.setVisibility(8);
        ControlsAppCompatSpinner controlsAppCompatSpinner3 = controlsSpinner.spinner;
        if (controlsAppCompatSpinner3 == null) {
            controlsAppCompatSpinner3 = null;
        }
        controlsAppCompatSpinner3.setVisibility(0);
        final ControlsSpinner.ItemAdapter itemAdapter = new ControlsSpinner.ItemAdapter(controlsSpinner.getContext(), R.layout.controls_custom_spinner_item, R.layout.controls_custom_spinner_dropdown, controlsSpinner.badgeProvider);
        itemAdapter.addAll(list);
        ControlsAppCompatSpinner controlsAppCompatSpinner4 = controlsSpinner.spinner;
        if (controlsAppCompatSpinner4 == null) {
            controlsAppCompatSpinner4 = null;
        }
        controlsAppCompatSpinner4.setAdapter((SpinnerAdapter) itemAdapter);
        controlsAppCompatSpinner4.setDropDownHorizontalOffset((int) controlsAppCompatSpinner4.getResources().getDimension(R.dimen.control_spinner_popup_side_offset));
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((ControlsSpinner.SelectionItem) next).getComponentName(), componentName)) {
                obj = next;
                break;
            }
        }
        ControlsSpinner.SelectionItem selectionItem2 = (ControlsSpinner.SelectionItem) obj;
        controlsAppCompatSpinner4.setSelection(list.indexOf(selectionItem2));
        controlsSpinner.previous = selectionItem2;
        controlsAppCompatSpinner4.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.controls.ui.view.ControlsSpinner$showSpinner$1$1
            /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
            
                if (r3.getAction() == 1) goto L11;
             */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean onTouch(android.view.View r2, android.view.MotionEvent r3) {
                /*
                    r1 = this;
                    com.android.systemui.controls.ui.view.ControlsSpinner r1 = r1
                    com.android.systemui.controls.ui.view.ControlsSpinner$SpinnerTouchCallback r1 = r1.spinnerTouchCallback
                    r2 = 0
                    if (r1 == 0) goto L23
                    com.android.systemui.controls.ui.CustomControlsUiControllerImpl$spinnerTouchCallback$1 r1 = (com.android.systemui.controls.ui.CustomControlsUiControllerImpl$spinnerTouchCallback$1) r1
                    boolean r0 = com.android.systemui.BasicRune.CONTROLS_SAMSUNG_ANALYTICS
                    if (r0 == 0) goto L23
                    if (r3 == 0) goto L17
                    int r3 = r3.getAction()
                    r0 = 1
                    if (r3 != r0) goto L17
                    goto L18
                L17:
                    r0 = r2
                L18:
                    if (r0 == 0) goto L23
                    com.android.systemui.controls.ui.CustomControlsUiControllerImpl r1 = r1.this$0
                    com.android.systemui.controls.ui.util.SALogger r1 = r1.saLogger
                    com.android.systemui.controls.ui.util.SALogger$Event$OpenSpinner r3 = com.android.systemui.controls.ui.util.SALogger.Event.OpenSpinner.INSTANCE
                    r1.sendEvent(r3)
                L23:
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.view.ControlsSpinner$showSpinner$1$1.onTouch(android.view.View, android.view.MotionEvent):boolean");
            }
        });
        controlsAppCompatSpinner4.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.android.systemui.controls.ui.view.ControlsSpinner$showSpinner$1$2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
                BadgeProvider badgeProvider;
                Object obj2;
                SelectedItem componentItem;
                CustomSelectedComponentRepository.CustomSelectedComponent customSelectedComponent;
                CharSequence charSequence2;
                if (adapterView != null) {
                    ControlsSpinner.ItemAdapter itemAdapter2 = ControlsSpinner.ItemAdapter.this;
                    ControlsSpinner controlsSpinner2 = controlsSpinner;
                    ControlsSpinner.SelectionItem selectionItem3 = (ControlsSpinner.SelectionItem) adapterView.getItemAtPosition(i);
                    itemAdapter2.mSelectedIndex = i;
                    itemAdapter2.notifyDataSetChanged();
                    if (!Intrinsics.areEqual(selectionItem3, controlsSpinner2.previous)) {
                        ControlsSpinner.SpinnerItemSelectionChangedCallback spinnerItemSelectionChangedCallback = controlsSpinner2.spinnerItemSelectedChangedCallback;
                        if (spinnerItemSelectionChangedCallback != null) {
                            ControlsSelectionItem controlsSelectionItem = (ControlsSelectionItem) selectionItem3;
                            CustomControlsUiControllerImpl customControlsUiControllerImpl = ((CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1) spinnerItemSelectionChangedCallback).this$0;
                            for (ComponentInfo componentInfo : customControlsUiControllerImpl.getAllComponentInfo()) {
                                Objects.toString(componentInfo.componentName);
                                Objects.toString(componentInfo.structureInfos);
                            }
                            Iterator it2 = customControlsUiControllerImpl.getAllComponentInfo().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    obj2 = it2.next();
                                    if (Intrinsics.areEqual(((ComponentInfo) obj2).componentName, controlsSelectionItem.componentName)) {
                                        break;
                                    }
                                } else {
                                    obj2 = null;
                                    break;
                                }
                            }
                            ComponentInfo componentInfo2 = (ComponentInfo) obj2;
                            if (componentInfo2 != null) {
                                ComponentName componentName2 = customControlsUiControllerImpl.selectedItem.getComponentName();
                                ComponentName componentName3 = componentInfo2.componentName;
                                if (!Intrinsics.areEqual(componentName3, componentName2)) {
                                    customControlsUiControllerImpl.saveFavorites(componentName3);
                                    ComponentInfo.Companion.getClass();
                                    CharSequence charSequence3 = "";
                                    if (!Intrinsics.areEqual(componentInfo2, ComponentInfo.EMPTY_COMPONENT_INFO)) {
                                        int i2 = CustomControlsUiControllerImpl.$r8$clinit;
                                        ControlsServiceInfo isPanelComponent = customControlsUiControllerImpl.isPanelComponent(componentInfo2);
                                        if (isPanelComponent != null) {
                                            customSelectedComponent = new CustomSelectedComponentRepository.CustomSelectedComponent(new SelectedItem.PanelItem(isPanelComponent.loadLabel(), componentName3));
                                        } else {
                                            ControlsServiceInfo access$getComponent = CustomControlsUiControllerImpl.access$getComponent(customControlsUiControllerImpl, componentInfo2);
                                            if (access$getComponent == null) {
                                                charSequence2 = "";
                                            } else {
                                                charSequence2 = access$getComponent.loadLabel();
                                            }
                                            customSelectedComponent = new CustomSelectedComponentRepository.CustomSelectedComponent(new SelectedItem.ComponentItem(charSequence2, componentInfo2));
                                        }
                                        ((CustomSelectedComponentRepositoryImpl) customControlsUiControllerImpl.customSelectedComponentRepository).setSelectedComponent(customSelectedComponent);
                                    }
                                    customControlsUiControllerImpl.isChanged = false;
                                    if (BasicRune.CONTROLS_SAMSUNG_ANALYTICS) {
                                        customControlsUiControllerImpl.saLogger.sendEvent(new SALogger.Event.TapSpinnerApp(customControlsUiControllerImpl.selectedItem.getComponentName().getPackageName()));
                                    }
                                    customControlsUiControllerImpl.adapterNeedToUpdateDataSet = true;
                                    ControlsServiceInfo isPanelComponent2 = customControlsUiControllerImpl.isPanelComponent(componentInfo2);
                                    ControlsServiceInfo access$getComponent2 = CustomControlsUiControllerImpl.access$getComponent(customControlsUiControllerImpl, componentInfo2);
                                    if (isPanelComponent2 != null) {
                                        componentItem = new SelectedItem.PanelItem(isPanelComponent2.loadLabel(), componentName3);
                                    } else {
                                        if (access$getComponent2 != null) {
                                            charSequence3 = access$getComponent2.loadLabel();
                                        }
                                        componentItem = new SelectedItem.ComponentItem(charSequence3, componentInfo2);
                                    }
                                    CustomControlsUiControllerImpl.access$reload(customControlsUiControllerImpl, componentItem);
                                }
                            }
                        }
                        controlsSpinner2.previous = selectionItem3;
                        if (BasicRune.CONTROLS_BADGE && (badgeProvider = controlsSpinner2.badgeProvider) != null) {
                            ((BadgeProviderImpl) badgeProvider).dismiss();
                        }
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onNothingSelected(AdapterView adapterView) {
            }
        });
    }
}
