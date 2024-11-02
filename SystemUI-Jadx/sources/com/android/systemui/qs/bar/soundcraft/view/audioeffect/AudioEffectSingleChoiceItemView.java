package com.android.systemui.qs.bar.soundcraft.view.audioeffect;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.viewbinding.AudioEffectSingleChoiceItemViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.SoundCraftViewBindingFactory;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseSingleChoiceViewModel;
import com.android.systemui.qs.customize.setting.SecQSSettingEditPopUpMenu;
import java.util.ArrayList;
import kotlin.Result;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioEffectSingleChoiceItemView extends BaseAudioEffectItemView {
    public final AudioEffectSingleChoiceItemViewBinding binding;
    public SecQSSettingEditPopUpMenu chooserMenu;
    public final Context context;
    public final LifecycleOwner lifecycleOwner;
    public final ViewGroup parent;
    public final BaseSingleChoiceViewModel viewModel;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
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

    public AudioEffectSingleChoiceItemView(Context context, LifecycleOwner lifecycleOwner, BaseSingleChoiceViewModel baseSingleChoiceViewModel, ViewGroup viewGroup) {
        this.context = context;
        this.lifecycleOwner = lifecycleOwner;
        this.viewModel = baseSingleChoiceViewModel;
        this.parent = viewGroup;
        int i = SoundCraftViewBindingFactory.$r8$clinit;
        AudioEffectSingleChoiceItemViewBinding audioEffectSingleChoiceItemViewBinding = new AudioEffectSingleChoiceItemViewBinding(LayoutInflater.from(context).inflate(R.layout.soundcraft_audio_effect_single_choice_chooser_item, viewGroup, false));
        this.binding = audioEffectSingleChoiceItemViewBinding;
        audioEffectSingleChoiceItemViewBinding.root.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectSingleChoiceItemView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioEffectSingleChoiceItemView.this.viewModel.onClick();
            }
        });
        baseSingleChoiceViewModel.showChooser.observe(lifecycleOwner, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectSingleChoiceItemView.2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                boolean booleanValue = ((Boolean) obj).booleanValue();
                final AudioEffectSingleChoiceItemView audioEffectSingleChoiceItemView = AudioEffectSingleChoiceItemView.this;
                if (booleanValue) {
                    SecQSSettingEditPopUpMenu secQSSettingEditPopUpMenu = audioEffectSingleChoiceItemView.chooserMenu;
                    if (secQSSettingEditPopUpMenu != null) {
                        secQSSettingEditPopUpMenu.dismiss();
                    }
                    LinearLayout linearLayout = audioEffectSingleChoiceItemView.binding.root;
                    if (linearLayout.getWindowToken() != null) {
                        BaseSingleChoiceViewModel baseSingleChoiceViewModel2 = audioEffectSingleChoiceItemView.viewModel;
                        Object value = baseSingleChoiceViewModel2.getOptionNames().getValue();
                        Intrinsics.checkNotNull(value);
                        Iterable<String> iterable = (Iterable) value;
                        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
                        for (String str : iterable) {
                            arrayList.add(new SecQSSettingEditPopUpMenu.EditPopUpContent(str, Intrinsics.areEqual(baseSingleChoiceViewModel2.selectedOptionName.getValue(), str)));
                        }
                        Context context2 = audioEffectSingleChoiceItemView.context;
                        SecQSSettingEditPopUpMenu secQSSettingEditPopUpMenu2 = new SecQSSettingEditPopUpMenu(context2);
                        secQSSettingEditPopUpMenu2.setWidth(-2);
                        secQSSettingEditPopUpMenu2.setAnchorView(linearLayout);
                        secQSSettingEditPopUpMenu2.setDropDownGravity(8388611);
                        secQSSettingEditPopUpMenu2.setAdapter(new SecQSSettingEditPopUpMenu.PopupListAdapter(context2, arrayList));
                        secQSSettingEditPopUpMenu2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectSingleChoiceItemView$showChooser$1$1
                            @Override // android.widget.AdapterView.OnItemClickListener
                            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                                AudioEffectSingleChoiceItemView.this.viewModel.onItemSelected(i2);
                            }
                        });
                        secQSSettingEditPopUpMenu2.dismissListener = new PopupWindow.OnDismissListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectSingleChoiceItemView$showChooser$1$2
                            @Override // android.widget.PopupWindow.OnDismissListener
                            public final void onDismiss() {
                                AudioEffectSingleChoiceItemView.this.viewModel.onChooserDismiss();
                            }
                        };
                        secQSSettingEditPopUpMenu2.show();
                        audioEffectSingleChoiceItemView.chooserMenu = secQSSettingEditPopUpMenu2;
                        return;
                    }
                    return;
                }
                SecQSSettingEditPopUpMenu secQSSettingEditPopUpMenu3 = audioEffectSingleChoiceItemView.chooserMenu;
                if (secQSSettingEditPopUpMenu3 != null) {
                    secQSSettingEditPopUpMenu3.dismiss();
                }
                audioEffectSingleChoiceItemView.chooserMenu = null;
            }
        });
        baseSingleChoiceViewModel.getTitle().observe(lifecycleOwner, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectSingleChoiceItemView.3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioEffectSingleChoiceItemView.this.binding.name.setText((String) obj);
            }
        });
        baseSingleChoiceViewModel.selectedOptionName.observe(lifecycleOwner, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectSingleChoiceItemView.4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioEffectSingleChoiceItemView.this.binding.status.setText((String) obj);
            }
        });
        baseSingleChoiceViewModel.getIcon().observe(lifecycleOwner, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectSingleChoiceItemView.5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Object failure;
                Integer num = (Integer) obj;
                AudioEffectSingleChoiceItemView audioEffectSingleChoiceItemView = AudioEffectSingleChoiceItemView.this;
                ImageView imageView = audioEffectSingleChoiceItemView.binding.icon;
                try {
                    int i2 = Result.$r8$clinit;
                    failure = audioEffectSingleChoiceItemView.context.getDrawable(num.intValue());
                } catch (Throwable th) {
                    int i3 = Result.$r8$clinit;
                    failure = new Result.Failure(th);
                }
                if (failure instanceof Result.Failure) {
                    failure = null;
                }
                imageView.setImageDrawable((Drawable) failure);
            }
        });
        baseSingleChoiceViewModel.notifyChange();
    }

    @Override // com.android.systemui.qs.bar.soundcraft.view.audioeffect.BaseAudioEffectItemView
    public final ViewGroup getRootView() {
        return this.binding.root;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.view.audioeffect.BaseAudioEffectItemView
    public final void update() {
        this.viewModel.notifyChange();
    }
}
