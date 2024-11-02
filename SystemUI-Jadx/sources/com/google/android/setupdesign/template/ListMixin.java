package com.google.android.setupdesign.template;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.google.android.setupcompat.internal.TemplateLayout;
import com.google.android.setupcompat.partnerconfig.PartnerConfig;
import com.google.android.setupcompat.partnerconfig.PartnerConfigHelper;
import com.google.android.setupcompat.template.Mixin;
import com.google.android.setupdesign.R$styleable;
import com.google.android.setupdesign.items.ItemAdapter;
import com.google.android.setupdesign.items.ItemGroup;
import com.google.android.setupdesign.items.ItemInflater;
import com.google.android.setupdesign.util.DrawableLayoutDirectionHelper;
import com.google.android.setupdesign.util.PartnerStyleHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ListMixin implements Mixin {
    public Drawable defaultDivider;
    public Drawable divider;
    public int dividerInsetEnd;
    public int dividerInsetStart;
    public ListView listView;
    public final TemplateLayout templateLayout;

    public ListMixin(TemplateLayout templateLayout, AttributeSet attributeSet, int i) {
        this.templateLayout = templateLayout;
        Context context = templateLayout.getContext();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SudListMixin, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            ItemInflater itemInflater = new ItemInflater(context);
            XmlResourceParser xml = itemInflater.resources.getXml(resourceId);
            try {
                Object inflate = itemInflater.inflate(xml);
                xml.close();
                ItemAdapter itemAdapter = new ItemAdapter((ItemGroup) inflate);
                ListView listViewInternal = getListViewInternal();
                if (listViewInternal != null) {
                    listViewInternal.setAdapter((ListAdapter) itemAdapter);
                }
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        }
        boolean z = obtainStyledAttributes.getBoolean(4, true);
        if (PartnerStyleHelper.shouldApplyPartnerResource(templateLayout)) {
            PartnerConfigHelper partnerConfigHelper = PartnerConfigHelper.get(context);
            PartnerConfig partnerConfig = PartnerConfig.CONFIG_ITEMS_DIVIDER_SHOWN;
            if (partnerConfigHelper.isPartnerConfigAvailable(partnerConfig)) {
                z = PartnerConfigHelper.get(context).getBoolean(context, partnerConfig, true);
            }
        }
        if (z) {
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, -1);
            if (dimensionPixelSize != -1) {
                this.dividerInsetStart = dimensionPixelSize;
                this.dividerInsetEnd = 0;
                updateDivider();
            } else {
                int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(3, 0);
                int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(2, 0);
                if (PartnerStyleHelper.shouldApplyPartnerResource(templateLayout)) {
                    PartnerConfigHelper partnerConfigHelper2 = PartnerConfigHelper.get(context);
                    PartnerConfig partnerConfig2 = PartnerConfig.CONFIG_LAYOUT_MARGIN_START;
                    dimensionPixelSize2 = partnerConfigHelper2.isPartnerConfigAvailable(partnerConfig2) ? (int) PartnerConfigHelper.get(context).getDimension(context, partnerConfig2, 0.0f) : dimensionPixelSize2;
                    PartnerConfigHelper partnerConfigHelper3 = PartnerConfigHelper.get(context);
                    PartnerConfig partnerConfig3 = PartnerConfig.CONFIG_LAYOUT_MARGIN_END;
                    if (partnerConfigHelper3.isPartnerConfigAvailable(partnerConfig3)) {
                        dimensionPixelSize3 = (int) PartnerConfigHelper.get(context).getDimension(context, partnerConfig3, 0.0f);
                    }
                }
                this.dividerInsetStart = dimensionPixelSize2;
                this.dividerInsetEnd = dimensionPixelSize3;
                updateDivider();
            }
        } else {
            getListViewInternal().setDivider(null);
        }
        obtainStyledAttributes.recycle();
    }

    public final ListView getListViewInternal() {
        if (this.listView == null) {
            View findManagedViewById = this.templateLayout.findManagedViewById(R.id.list);
            if (findManagedViewById instanceof ListView) {
                this.listView = (ListView) findManagedViewById;
            }
        }
        return this.listView;
    }

    public final void updateDivider() {
        ListView listViewInternal = getListViewInternal();
        if (listViewInternal == null) {
            return;
        }
        TemplateLayout templateLayout = this.templateLayout;
        if (templateLayout.isLayoutDirectionResolved()) {
            if (this.defaultDivider == null) {
                this.defaultDivider = listViewInternal.getDivider();
            }
            Drawable drawable = this.defaultDivider;
            if (drawable != null) {
                InsetDrawable createRelativeInsetDrawable = DrawableLayoutDirectionHelper.createRelativeInsetDrawable(drawable, this.dividerInsetStart, this.dividerInsetEnd, templateLayout);
                this.divider = createRelativeInsetDrawable;
                listViewInternal.setDivider(createRelativeInsetDrawable);
            }
        }
    }
}
