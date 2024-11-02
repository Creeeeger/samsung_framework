package androidx.leanback.widget;

import androidx.leanback.widget.ItemAlignmentFacet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ItemAlignment {
    public final Axis vertical = new Axis(1);
    public final Axis horizontal = new Axis(0);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Axis extends ItemAlignmentFacet.ItemAlignmentDef {
        public final int mOrientation;

        public Axis(int i) {
            this.mOrientation = i;
        }
    }
}
