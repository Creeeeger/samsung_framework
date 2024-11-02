package com.google.android.setupdesign;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import androidx.window.embedding.ActivityEmbeddingController;
import com.android.systemui.R;
import com.google.android.setupcompat.PartnerCustomizationLayout;
import com.google.android.setupcompat.internal.TemplateLayout;
import com.google.android.setupcompat.partnerconfig.PartnerConfig;
import com.google.android.setupcompat.partnerconfig.PartnerConfigHelper;
import com.google.android.setupcompat.template.StatusBarMixin;
import com.google.android.setupdesign.template.DescriptionMixin;
import com.google.android.setupdesign.template.HeaderMixin;
import com.google.android.setupdesign.template.IconMixin;
import com.google.android.setupdesign.template.IllustrationProgressMixin;
import com.google.android.setupdesign.template.ProfileMixin;
import com.google.android.setupdesign.template.ProgressBarMixin;
import com.google.android.setupdesign.template.RequireScrollMixin;
import com.google.android.setupdesign.template.ScrollViewScrollHandlingDelegate;
import com.google.android.setupdesign.util.LayoutStyler;
import com.google.android.setupdesign.util.PartnerStyleHelper;
import com.google.android.setupdesign.util.TextViewPartnerStyler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class GlifLayout extends PartnerCustomizationLayout {
    public boolean applyPartnerHeavyThemeResource;
    public ColorStateList backgroundBaseColor;
    public boolean backgroundPatterned;
    public ColorStateList primaryColor;

    public GlifLayout(Context context) {
        this(context, 0, 0);
    }

    private void init(AttributeSet attributeSet, int i) {
        boolean z;
        ScrollView scrollView;
        if (isInEditMode()) {
            return;
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.SudGlifLayout, i, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(4, false);
        if (shouldApplyPartnerResource() && z2) {
            z = true;
        } else {
            z = false;
        }
        this.applyPartnerHeavyThemeResource = z;
        registerMixin(HeaderMixin.class, new HeaderMixin(this, attributeSet, i));
        registerMixin(DescriptionMixin.class, new DescriptionMixin(this, attributeSet, i));
        registerMixin(IconMixin.class, new IconMixin(this, attributeSet, i));
        registerMixin(ProfileMixin.class, new ProfileMixin(this, attributeSet, i));
        registerMixin(ProgressBarMixin.class, new ProgressBarMixin(this, attributeSet, i));
        registerMixin(IllustrationProgressMixin.class, new IllustrationProgressMixin(this));
        RequireScrollMixin requireScrollMixin = new RequireScrollMixin(this);
        registerMixin(RequireScrollMixin.class, requireScrollMixin);
        View findManagedViewById = findManagedViewById(R.id.sud_scroll_view);
        if (findManagedViewById instanceof ScrollView) {
            scrollView = (ScrollView) findManagedViewById;
        } else {
            scrollView = null;
        }
        if (scrollView != null) {
            new ScrollViewScrollHandlingDelegate(requireScrollMixin, scrollView);
        }
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(2);
        if (colorStateList != null) {
            this.primaryColor = colorStateList;
            updateBackground();
            ProgressBarMixin progressBarMixin = (ProgressBarMixin) getMixin(ProgressBarMixin.class);
            progressBarMixin.color = colorStateList;
            ProgressBar peekProgressBar = progressBarMixin.peekProgressBar();
            if (peekProgressBar != null) {
                peekProgressBar.setIndeterminateTintList(colorStateList);
                peekProgressBar.setProgressBackgroundTintList(colorStateList);
            }
        }
        if (shouldApplyPartnerHeavyThemeResource() && !useFullDynamicColor()) {
            getRootView().setBackgroundColor(PartnerConfigHelper.get(getContext()).getColor(getContext(), PartnerConfig.CONFIG_LAYOUT_BACKGROUND_COLOR));
        }
        View findManagedViewById2 = findManagedViewById(R.id.sud_layout_content);
        if (findManagedViewById2 != null) {
            if (shouldApplyPartnerResource()) {
                LayoutStyler.applyPartnerCustomizationExtraPaddingStyle(findManagedViewById2);
            }
            if (!(this instanceof GlifPreferenceLayout)) {
                tryApplyPartnerCustomizationContentPaddingTopStyle(findManagedViewById2);
            }
        }
        updateLandscapeMiddleHorizontalSpacing();
        this.backgroundBaseColor = obtainStyledAttributes.getColorStateList(0);
        updateBackground();
        this.backgroundPatterned = obtainStyledAttributes.getBoolean(1, true);
        updateBackground();
        int resourceId = obtainStyledAttributes.getResourceId(3, 0);
        if (resourceId != 0) {
            ViewStub viewStub = (ViewStub) findManagedViewById(R.id.sud_layout_sticky_header);
            viewStub.setLayoutResource(resourceId);
            viewStub.inflate();
        }
        obtainStyledAttributes.recycle();
    }

    public static boolean isEmbeddedActivityOnePaneEnabled(Context context) {
        if (PartnerConfigHelper.isEmbeddedActivityOnePaneEnabled(context) && ActivityEmbeddingController.getInstance(context).isActivityEmbedded(PartnerCustomizationLayout.lookupActivityFromContext(context))) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.setupcompat.PartnerCustomizationLayout, com.google.android.setupcompat.internal.TemplateLayout
    public ViewGroup findContainer(int i) {
        if (i == 0) {
            i = R.id.sud_layout_content;
        }
        return super.findContainer(i);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        boolean shouldApplyPartnerHeavyThemeResource;
        int i;
        ViewGroup.LayoutParams layoutParams;
        PartnerConfigHelper partnerConfigHelper;
        PartnerConfig partnerConfig;
        int dimension;
        int i2;
        super.onFinishInflate();
        IconMixin iconMixin = (IconMixin) getMixin(IconMixin.class);
        if (PartnerStyleHelper.shouldApplyPartnerResource(iconMixin.templateLayout)) {
            final ImageView view = iconMixin.getView();
            FrameLayout frameLayout = (FrameLayout) iconMixin.templateLayout.findManagedViewById(R.id.sud_layout_icon_container);
            if (view != null && frameLayout != null) {
                Context context = view.getContext();
                int layoutGravity = PartnerStyleHelper.getLayoutGravity(context);
                if (layoutGravity != 0 && (view.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
                    layoutParams2.gravity = layoutGravity;
                    view.setLayoutParams(layoutParams2);
                }
                PartnerConfigHelper partnerConfigHelper2 = PartnerConfigHelper.get(context);
                PartnerConfig partnerConfig2 = PartnerConfig.CONFIG_ICON_SIZE;
                if (partnerConfigHelper2.isPartnerConfigAvailable(partnerConfig2)) {
                    view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.setupdesign.util.HeaderAreaStyler$1
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public final boolean onPreDraw() {
                            view.getViewTreeObserver().removeOnPreDrawListener(this);
                            if (view.getDrawable() != null && !(view.getDrawable() instanceof VectorDrawable) && !(view.getDrawable() instanceof VectorDrawableCompat)) {
                                String str = Build.TYPE;
                                if (str.equals("userdebug") || str.equals("eng")) {
                                    Log.w("HeaderAreaStyler", "To achieve scaling icon in SetupDesign lib, should use vector drawable icon from " + view.getContext().getPackageName());
                                    return true;
                                }
                                return true;
                            }
                            return true;
                        }
                    });
                    ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
                    layoutParams3.height = (int) PartnerConfigHelper.get(context).getDimension(context, partnerConfig2, 0.0f);
                    layoutParams3.width = -2;
                    view.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    Drawable drawable = view.getDrawable();
                    if (drawable != null && drawable.getIntrinsicWidth() > drawable.getIntrinsicHeight() * 2 && (i2 = layoutParams3.height) > (dimension = (int) context.getResources().getDimension(R.dimen.sud_horizontal_icon_height))) {
                        i = i2 - dimension;
                        layoutParams3.height = dimension;
                        layoutParams = frameLayout.getLayoutParams();
                        partnerConfigHelper = PartnerConfigHelper.get(context);
                        partnerConfig = PartnerConfig.CONFIG_ICON_MARGIN_TOP;
                        if (partnerConfigHelper.isPartnerConfigAvailable(partnerConfig) && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, ((int) PartnerConfigHelper.get(context).getDimension(context, partnerConfig, 0.0f)) + i, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                        }
                    }
                }
                i = 0;
                layoutParams = frameLayout.getLayoutParams();
                partnerConfigHelper = PartnerConfigHelper.get(context);
                partnerConfig = PartnerConfig.CONFIG_ICON_MARGIN_TOP;
                if (partnerConfigHelper.isPartnerConfigAvailable(partnerConfig)) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams2.setMargins(marginLayoutParams2.leftMargin, ((int) PartnerConfigHelper.get(context).getDimension(context, partnerConfig, 0.0f)) + i, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                }
            }
        }
        ((HeaderMixin) getMixin(HeaderMixin.class)).tryApplyPartnerCustomizationStyle();
        TemplateLayout templateLayout = ((DescriptionMixin) getMixin(DescriptionMixin.class)).templateLayout;
        TextView textView = (TextView) templateLayout.findManagedViewById(R.id.sud_layout_subtitle);
        if (textView != null && PartnerStyleHelper.shouldApplyPartnerResource(templateLayout)) {
            TextViewPartnerStyler.applyPartnerCustomizationStyle(textView, new TextViewPartnerStyler.TextPartnerConfigs(PartnerConfig.CONFIG_DESCRIPTION_TEXT_COLOR, PartnerConfig.CONFIG_DESCRIPTION_LINK_TEXT_COLOR, PartnerConfig.CONFIG_DESCRIPTION_TEXT_SIZE, PartnerConfig.CONFIG_DESCRIPTION_FONT_FAMILY, PartnerConfig.CONFIG_DESCRIPTION_LINK_FONT_FAMILY, PartnerConfig.CONFIG_DESCRIPTION_TEXT_MARGIN_TOP, PartnerConfig.CONFIG_DESCRIPTION_TEXT_MARGIN_BOTTOM, PartnerStyleHelper.getLayoutGravity(textView.getContext())));
        }
        ProgressBarMixin progressBarMixin = (ProgressBarMixin) getMixin(ProgressBarMixin.class);
        ProgressBar peekProgressBar = progressBarMixin.peekProgressBar();
        if (progressBarMixin.useBottomProgressBar && peekProgressBar != null) {
            TemplateLayout templateLayout2 = progressBarMixin.templateLayout;
            if (!(templateLayout2 instanceof GlifLayout)) {
                shouldApplyPartnerHeavyThemeResource = false;
            } else {
                shouldApplyPartnerHeavyThemeResource = ((GlifLayout) templateLayout2).shouldApplyPartnerHeavyThemeResource();
            }
            if (shouldApplyPartnerHeavyThemeResource) {
                Context context2 = peekProgressBar.getContext();
                ViewGroup.LayoutParams layoutParams4 = peekProgressBar.getLayoutParams();
                if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams4;
                    int i3 = marginLayoutParams3.topMargin;
                    PartnerConfigHelper partnerConfigHelper3 = PartnerConfigHelper.get(context2);
                    PartnerConfig partnerConfig3 = PartnerConfig.CONFIG_PROGRESS_BAR_MARGIN_TOP;
                    if (partnerConfigHelper3.isPartnerConfigAvailable(partnerConfig3)) {
                        i3 = (int) PartnerConfigHelper.get(context2).getDimension(context2, partnerConfig3, context2.getResources().getDimension(R.dimen.sud_progress_bar_margin_top));
                    }
                    int i4 = marginLayoutParams3.bottomMargin;
                    PartnerConfigHelper partnerConfigHelper4 = PartnerConfigHelper.get(context2);
                    PartnerConfig partnerConfig4 = PartnerConfig.CONFIG_PROGRESS_BAR_MARGIN_BOTTOM;
                    if (partnerConfigHelper4.isPartnerConfigAvailable(partnerConfig4)) {
                        i4 = (int) PartnerConfigHelper.get(context2).getDimension(context2, partnerConfig4, context2.getResources().getDimension(R.dimen.sud_progress_bar_margin_bottom));
                    }
                    if (i3 != marginLayoutParams3.topMargin || i4 != marginLayoutParams3.bottomMargin) {
                        marginLayoutParams3.setMargins(marginLayoutParams3.leftMargin, i3, marginLayoutParams3.rightMargin, i4);
                    }
                }
            } else {
                Context context3 = peekProgressBar.getContext();
                ViewGroup.LayoutParams layoutParams5 = peekProgressBar.getLayoutParams();
                if (layoutParams5 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams5;
                    marginLayoutParams4.setMargins(marginLayoutParams4.leftMargin, (int) context3.getResources().getDimension(R.dimen.sud_progress_bar_margin_top), marginLayoutParams4.rightMargin, (int) context3.getResources().getDimension(R.dimen.sud_progress_bar_margin_bottom));
                }
            }
        }
        TemplateLayout templateLayout3 = ((ProfileMixin) getMixin(ProfileMixin.class)).templateLayout;
        if (PartnerStyleHelper.shouldApplyPartnerResource(templateLayout3)) {
            ImageView imageView = (ImageView) templateLayout3.findManagedViewById(R.id.sud_account_avatar);
            TextView textView2 = (TextView) templateLayout3.findManagedViewById(R.id.sud_account_name);
            LinearLayout linearLayout = (LinearLayout) templateLayout3.findManagedViewById(R.id.sud_layout_profile);
            LayoutStyler.applyPartnerCustomizationExtraPaddingStyle(templateLayout3.findManagedViewById(R.id.sud_layout_header));
            if (imageView != null && textView2 != null) {
                Context context4 = imageView.getContext();
                ViewGroup.LayoutParams layoutParams6 = imageView.getLayoutParams();
                if (layoutParams6 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) layoutParams6;
                    marginLayoutParams5.setMargins(marginLayoutParams5.leftMargin, marginLayoutParams5.topMargin, (int) PartnerConfigHelper.get(context4).getDimension(context4, PartnerConfig.CONFIG_ACCOUNT_AVATAR_MARGIN_END, 0.0f), marginLayoutParams5.bottomMargin);
                }
                imageView.setMaxHeight((int) PartnerConfigHelper.get(context4).getDimension(context4, PartnerConfig.CONFIG_ACCOUNT_AVATAR_SIZE, context4.getResources().getDimension(R.dimen.sud_account_avatar_max_height)));
                textView2.setTextSize(0, (int) PartnerConfigHelper.get(context4).getDimension(context4, PartnerConfig.CONFIG_ACCOUNT_NAME_TEXT_SIZE, context4.getResources().getDimension(R.dimen.sud_account_name_text_size)));
                Typeface create = Typeface.create(PartnerConfigHelper.get(context4).getString(context4, PartnerConfig.CONFIG_ACCOUNT_NAME_FONT_FAMILY), 0);
                if (create != null) {
                    textView2.setTypeface(create);
                }
                linearLayout.setGravity(PartnerStyleHelper.getLayoutGravity(linearLayout.getContext()));
            }
        }
        TextView textView3 = (TextView) findManagedViewById(R.id.sud_layout_description);
        if (textView3 != null) {
            if (this.applyPartnerHeavyThemeResource) {
                TextViewPartnerStyler.applyPartnerCustomizationStyle(textView3, new TextViewPartnerStyler.TextPartnerConfigs(PartnerConfig.CONFIG_DESCRIPTION_TEXT_COLOR, PartnerConfig.CONFIG_DESCRIPTION_LINK_TEXT_COLOR, PartnerConfig.CONFIG_DESCRIPTION_TEXT_SIZE, PartnerConfig.CONFIG_DESCRIPTION_FONT_FAMILY, PartnerConfig.CONFIG_DESCRIPTION_LINK_FONT_FAMILY, null, null, PartnerStyleHelper.getLayoutGravity(textView3.getContext())));
            } else if (shouldApplyPartnerResource()) {
                TextViewPartnerStyler.TextPartnerConfigs textPartnerConfigs = new TextViewPartnerStyler.TextPartnerConfigs(null, null, null, null, null, null, null, PartnerStyleHelper.getLayoutGravity(textView3.getContext()));
                TextViewPartnerStyler.applyPartnerCustomizationVerticalMargins(textView3, textPartnerConfigs);
                textView3.setGravity(textPartnerConfigs.textGravity);
            }
        }
    }

    @Override // com.google.android.setupcompat.PartnerCustomizationLayout, com.google.android.setupcompat.internal.TemplateLayout
    public View onInflateTemplate(LayoutInflater layoutInflater, int i) {
        if (i == 0) {
            if (isEmbeddedActivityOnePaneEnabled(getContext())) {
                i = R.layout.sud_glif_embedded_template;
            } else {
                i = R.layout.sud_glif_template;
            }
        }
        return inflateTemplate(layoutInflater, 2132018010, i);
    }

    public final boolean shouldApplyPartnerHeavyThemeResource() {
        if (!this.applyPartnerHeavyThemeResource && (!shouldApplyPartnerResource() || !PartnerConfigHelper.shouldApplyExtendedPartnerConfig(getContext()))) {
            return false;
        }
        return true;
    }

    public final void tryApplyPartnerCustomizationContentPaddingTopStyle(View view) {
        int dimension;
        Context context = view.getContext();
        PartnerConfigHelper partnerConfigHelper = PartnerConfigHelper.get(context);
        PartnerConfig partnerConfig = PartnerConfig.CONFIG_CONTENT_PADDING_TOP;
        boolean isPartnerConfigAvailable = partnerConfigHelper.isPartnerConfigAvailable(partnerConfig);
        if (shouldApplyPartnerResource() && isPartnerConfigAvailable && (dimension = (int) PartnerConfigHelper.get(context).getDimension(context, partnerConfig, 0.0f)) != view.getPaddingTop()) {
            view.setPadding(view.getPaddingStart(), dimension, view.getPaddingEnd(), view.getPaddingBottom());
        }
    }

    public final void updateBackground() {
        int i;
        Drawable colorDrawable;
        if (findManagedViewById(R.id.suc_layout_status) != null) {
            ColorStateList colorStateList = this.backgroundBaseColor;
            if (colorStateList != null) {
                i = colorStateList.getDefaultColor();
            } else {
                ColorStateList colorStateList2 = this.primaryColor;
                if (colorStateList2 != null) {
                    i = colorStateList2.getDefaultColor();
                } else {
                    i = 0;
                }
            }
            if (this.backgroundPatterned) {
                colorDrawable = new GlifPatternDrawable(i);
            } else {
                colorDrawable = new ColorDrawable(i);
            }
            ((StatusBarMixin) getMixin(StatusBarMixin.class)).setStatusBarBackground(colorDrawable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateLandscapeMiddleHorizontalSpacing() {
        /*
            r8 = this;
            android.content.res.Resources r0 = r8.getResources()
            r1 = 2131170393(0x7f071459, float:1.7955143E38)
            int r0 = r0.getDimensionPixelSize(r1)
            boolean r1 = r8.shouldApplyPartnerResource()
            r2 = 0
            if (r1 == 0) goto L33
            android.content.Context r1 = r8.getContext()
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper r1 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.get(r1)
            com.google.android.setupcompat.partnerconfig.PartnerConfig r3 = com.google.android.setupcompat.partnerconfig.PartnerConfig.CONFIG_LAND_MIDDLE_HORIZONTAL_SPACING
            boolean r1 = r1.isPartnerConfigAvailable(r3)
            if (r1 == 0) goto L33
            android.content.Context r0 = r8.getContext()
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper r0 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.get(r0)
            android.content.Context r1 = r8.getContext()
            float r0 = r0.getDimension(r1, r3, r2)
            int r0 = (int) r0
        L33:
            r1 = 2131364710(0x7f0a0b66, float:1.8349265E38)
            android.view.View r1 = r8.findManagedViewById(r1)
            r3 = 0
            if (r1 == 0) goto L8e
            boolean r4 = r8.shouldApplyPartnerResource()
            if (r4 == 0) goto L65
            android.content.Context r4 = r8.getContext()
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper r4 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.get(r4)
            com.google.android.setupcompat.partnerconfig.PartnerConfig r5 = com.google.android.setupcompat.partnerconfig.PartnerConfig.CONFIG_LAYOUT_MARGIN_END
            boolean r4 = r4.isPartnerConfigAvailable(r5)
            if (r4 == 0) goto L65
            android.content.Context r4 = r8.getContext()
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper r4 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.get(r4)
            android.content.Context r6 = r8.getContext()
            float r4 = r4.getDimension(r6, r5, r2)
            int r4 = (int) r4
            goto L7c
        L65:
            android.content.Context r4 = r8.getContext()
            r5 = 2130970177(0x7f040641, float:1.7549057E38)
            int[] r5 = new int[]{r5}
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5)
            int r5 = r4.getDimensionPixelSize(r3, r3)
            r4.recycle()
            r4 = r5
        L7c:
            int r5 = r0 / 2
            int r5 = r5 - r4
            int r4 = r1.getPaddingStart()
            int r6 = r1.getPaddingTop()
            int r7 = r1.getPaddingBottom()
            r1.setPadding(r4, r6, r5, r7)
        L8e:
            r4 = 2131364709(0x7f0a0b65, float:1.8349263E38)
            android.view.View r4 = r8.findManagedViewById(r4)
            if (r4 == 0) goto Leb
            boolean r5 = r8.shouldApplyPartnerResource()
            if (r5 == 0) goto Lbf
            android.content.Context r5 = r8.getContext()
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper r5 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.get(r5)
            com.google.android.setupcompat.partnerconfig.PartnerConfig r6 = com.google.android.setupcompat.partnerconfig.PartnerConfig.CONFIG_LAYOUT_MARGIN_START
            boolean r5 = r5.isPartnerConfigAvailable(r6)
            if (r5 == 0) goto Lbf
            android.content.Context r5 = r8.getContext()
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper r5 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.get(r5)
            android.content.Context r8 = r8.getContext()
            float r8 = r5.getDimension(r8, r6, r2)
            int r8 = (int) r8
            goto Ld6
        Lbf:
            android.content.Context r8 = r8.getContext()
            r2 = 2130970178(0x7f040642, float:1.7549059E38)
            int[] r2 = new int[]{r2}
            android.content.res.TypedArray r8 = r8.obtainStyledAttributes(r2)
            int r2 = r8.getDimensionPixelSize(r3, r3)
            r8.recycle()
            r8 = r2
        Ld6:
            if (r1 == 0) goto Ldc
            int r0 = r0 / 2
            int r3 = r0 - r8
        Ldc:
            int r8 = r4.getPaddingTop()
            int r0 = r4.getPaddingEnd()
            int r1 = r4.getPaddingBottom()
            r4.setPadding(r3, r8, r0, r1)
        Leb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.setupdesign.GlifLayout.updateLandscapeMiddleHorizontalSpacing():void");
    }

    public GlifLayout(Context context, int i) {
        this(context, i, 0);
    }

    public GlifLayout(Context context, int i, int i2) {
        super(context, i, i2);
        this.backgroundPatterned = true;
        this.applyPartnerHeavyThemeResource = false;
        init(null, R.attr.sudLayoutTheme);
    }

    public GlifLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.backgroundPatterned = true;
        this.applyPartnerHeavyThemeResource = false;
        init(attributeSet, R.attr.sudLayoutTheme);
    }

    public GlifLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.backgroundPatterned = true;
        this.applyPartnerHeavyThemeResource = false;
        init(attributeSet, i);
    }
}
