package com.google.android.setupdesign.items;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import com.google.android.setupdesign.R$styleable;
import com.google.android.setupdesign.items.ItemHierarchy;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class AbstractItemHierarchy implements ItemHierarchy {
    public final int id;
    public final ArrayList observers;

    public AbstractItemHierarchy() {
        this.observers = new ArrayList();
        this.id = -1;
    }

    public final void notifyItemRangeChanged(int i, int i2) {
        if (i < 0) {
            IconCompat$$ExternalSyntheticOutline0.m("notifyItemRangeChanged: Invalid position=", i, "AbstractItemHierarchy");
            return;
        }
        Iterator it = this.observers.iterator();
        while (it.hasNext()) {
            ((ItemHierarchy.Observer) it.next()).onItemRangeChanged(this, i);
        }
    }

    public final void notifyItemRangeInserted(int i, int i2) {
        if (i < 0) {
            IconCompat$$ExternalSyntheticOutline0.m("notifyItemRangeInserted: Invalid position=", i, "AbstractItemHierarchy");
        } else {
            if (i2 < 0) {
                IconCompat$$ExternalSyntheticOutline0.m("notifyItemRangeInserted: Invalid itemCount=", i2, "AbstractItemHierarchy");
                return;
            }
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((ItemHierarchy.Observer) it.next()).onItemRangeInserted(this, i, i2);
            }
        }
    }

    public AbstractItemHierarchy(Context context, AttributeSet attributeSet) {
        this.observers = new ArrayList();
        this.id = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SudAbstractItem);
        this.id = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
    }
}
