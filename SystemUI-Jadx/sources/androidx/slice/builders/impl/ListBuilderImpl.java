package androidx.slice.builders.impl;

import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Pair;
import androidx.slice.Clock;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import androidx.slice.SliceSpec;
import androidx.slice.SystemClock;
import androidx.slice.builders.ListBuilder;
import androidx.slice.builders.SliceAction;
import androidx.slice.core.SliceActionImpl;
import androidx.slice.core.SliceQuery;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import java.time.Duration;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ListBuilderImpl extends TemplateBuilderImpl implements ListBuilder {
    public boolean mFirstRowChecked;
    public boolean mFirstRowHasText;
    public boolean mIsFirstRowTypeValid;
    public Slice mSliceHeader;

    public ListBuilderImpl(Slice.Builder builder, SliceSpec sliceSpec) {
        this(builder, sliceSpec, new SystemClock());
    }

    @Override // androidx.slice.builders.impl.ListBuilder
    public final void addRow(ListBuilder.RowBuilder rowBuilder) {
        boolean z;
        boolean z2;
        boolean z3;
        RowBuilderImpl rowBuilderImpl = new RowBuilderImpl(new Slice.Builder(this.mSliceBuilder));
        Uri uri = rowBuilder.mUri;
        if (uri != null) {
            rowBuilderImpl.mSliceBuilder = new Slice.Builder(uri);
        }
        rowBuilderImpl.mPrimaryAction = rowBuilder.mPrimaryAction;
        boolean z4 = false;
        int i = rowBuilder.mLayoutDirection;
        if (i != -1) {
            rowBuilderImpl.mSliceBuilder.addInt(i, "layout_direction", new String[0]);
        }
        long j = rowBuilder.mTimeStamp;
        if (j != -1) {
            Slice.Builder builder = new Slice.Builder(rowBuilderImpl.mSliceBuilder);
            builder.addTimestamp(j, null, new String[0]);
            builder.addHints(UniversalCredentialUtil.AGENT_TITLE);
            rowBuilderImpl.mStartItem = builder.build();
        }
        CharSequence charSequence = rowBuilder.mTitle;
        if (charSequence != null || rowBuilder.mTitleLoading) {
            boolean z5 = rowBuilder.mTitleLoading;
            SliceItem sliceItem = new SliceItem(charSequence, "text", (String) null, new String[]{UniversalCredentialUtil.AGENT_TITLE});
            rowBuilderImpl.mTitleItem = sliceItem;
            if (z5) {
                sliceItem.addHint();
            }
        }
        CharSequence charSequence2 = rowBuilder.mContentDescription;
        if (charSequence2 != null) {
            rowBuilderImpl.mContentDescr = charSequence2;
        }
        List list = rowBuilder.mEndItems;
        List list2 = rowBuilder.mEndTypes;
        List list3 = rowBuilder.mEndLoads;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i2 >= arrayList.size()) {
                break;
            }
            int intValue = ((Integer) ((ArrayList) list2).get(i2)).intValue();
            ArrayList arrayList2 = rowBuilderImpl.mEndItems;
            if (intValue != 0) {
                if (intValue != 1) {
                    if (intValue == 2) {
                        SliceAction sliceAction = (SliceAction) arrayList.get(i2);
                        boolean booleanValue = ((Boolean) ((ArrayList) list3).get(i2)).booleanValue();
                        Slice.Builder builder2 = new Slice.Builder(rowBuilderImpl.mSliceBuilder);
                        if (booleanValue) {
                            builder2.addHints("partial");
                        }
                        SliceActionImpl sliceActionImpl = sliceAction.mSliceAction;
                        sliceActionImpl.getClass();
                        builder2.addHints("shortcut");
                        builder2.addAction(sliceActionImpl.mAction, sliceActionImpl.buildSliceContent(builder2).build(), sliceActionImpl.getSubtype());
                        arrayList2.add(builder2.build());
                    }
                    z3 = z4;
                } else {
                    Pair pair = (Pair) arrayList.get(i2);
                    IconCompat iconCompat = (IconCompat) pair.first;
                    int intValue2 = ((Integer) pair.second).intValue();
                    boolean booleanValue2 = ((Boolean) ((ArrayList) list3).get(i2)).booleanValue();
                    Slice.Builder builder3 = new Slice.Builder(rowBuilderImpl.mSliceBuilder);
                    ArrayList arrayList3 = new ArrayList();
                    if (intValue2 == 6) {
                        arrayList3.add("show_label");
                    }
                    if (intValue2 != 0) {
                        arrayList3.add("no_tint");
                    }
                    if (intValue2 == 2 || intValue2 == 4) {
                        arrayList3.add("large");
                    }
                    if (intValue2 == 3 || intValue2 == 4) {
                        arrayList3.add("raw");
                    }
                    if (booleanValue2) {
                        arrayList3.add("partial");
                    }
                    iconCompat.getClass();
                    if (Slice.isValidIcon(iconCompat)) {
                        builder3.addIcon(iconCompat, null, (String[]) arrayList3.toArray(new String[arrayList3.size()]));
                    }
                    if (booleanValue2) {
                        builder3.addHints("partial");
                    }
                    arrayList2.add(builder3.build());
                    z3 = false;
                }
            } else {
                long longValue = ((Long) arrayList.get(i2)).longValue();
                Slice.Builder builder4 = new Slice.Builder(rowBuilderImpl.mSliceBuilder);
                z3 = false;
                builder4.addTimestamp(longValue, null, new String[0]);
                arrayList2.add(builder4.build());
            }
            i2++;
            z4 = z3;
        }
        boolean z6 = z4;
        SliceItem sliceItem2 = rowBuilderImpl.mTitleItem;
        if (sliceItem2 == null) {
            z = z6;
        } else {
            z = true;
        }
        if (!this.mFirstRowChecked) {
            this.mFirstRowChecked = true;
            this.mIsFirstRowTypeValid = true;
            this.mFirstRowHasText = z;
        }
        if (sliceItem2 == null) {
            z2 = z6;
        } else {
            z2 = true;
        }
        if (!this.mFirstRowChecked) {
            this.mFirstRowChecked = true;
            this.mIsFirstRowTypeValid = true;
            this.mFirstRowHasText = z2;
        }
        rowBuilderImpl.mSliceBuilder.addHints("list_item");
        Slice.Builder builder5 = this.mSliceBuilder;
        Slice build = rowBuilderImpl.build();
        builder5.getClass();
        builder5.addSubSlice(build, null);
    }

    @Override // androidx.slice.builders.impl.TemplateBuilderImpl
    public final void apply(Slice.Builder builder) {
        ((SystemClock) this.mClock).getClass();
        builder.addLong(System.currentTimeMillis(), "millis", "last_updated");
        Slice slice = this.mSliceHeader;
        if (slice != null) {
            builder.addSubSlice(slice, null);
        }
    }

    @Override // androidx.slice.builders.impl.TemplateBuilderImpl
    public final Slice build() {
        boolean z;
        Slice build = super.build();
        final String[] strArr = null;
        boolean z2 = true;
        if (SliceQuery.find(build, (String) null, "partial") != null) {
            z = true;
        } else {
            z = false;
        }
        final String str = "slice";
        if (SliceQuery.find(build, "slice", "list_item") != null) {
            z2 = false;
        }
        final String[] strArr2 = {"shortcut", UniversalCredentialUtil.AGENT_TITLE};
        SliceItem find = SliceQuery.find(build, "action", strArr2, (String[]) null);
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        Collections.addAll(arrayDeque, build.mItems);
        SliceQuery.findAll(arrayDeque, new SliceQuery.Filter() { // from class: androidx.slice.core.SliceQuery.2
            public final /* synthetic */ String val$format;
            public final /* synthetic */ String[] val$hints;
            public final /* synthetic */ String[] val$nonHints;

            public AnonymousClass2(final String str2, final String[] strArr22, final String[] strArr3) {
                r1 = str2;
                r2 = strArr22;
                r3 = strArr3;
            }

            @Override // androidx.slice.core.SliceQuery.Filter
            public final boolean filter(SliceItem sliceItem) {
                if (SliceQuery.checkFormat(sliceItem, r1) && SliceQuery.hasHints(sliceItem, r2) && !SliceQuery.hasAnyHints(sliceItem, r3)) {
                    return true;
                }
                return false;
            }
        }, arrayList);
        if (!z && !z2 && find == null && arrayList.isEmpty()) {
            throw new IllegalStateException("A slice requires a primary action; ensure one of your builders has called #setPrimaryAction with a valid SliceAction.");
        }
        boolean z3 = this.mFirstRowChecked;
        if (z3 && !this.mIsFirstRowTypeValid) {
            throw new IllegalStateException("A slice cannot have the first row be constructed from a GridRowBuilder, consider using #setHeader.");
        }
        if (z3 && !this.mFirstRowHasText) {
            throw new IllegalStateException("A slice requires the first row to have some text.");
        }
        return build;
    }

    @Override // androidx.slice.builders.impl.ListBuilder
    public final void setHeader(ListBuilder.HeaderBuilder headerBuilder) {
        this.mIsFirstRowTypeValid = true;
        this.mFirstRowHasText = true;
        this.mFirstRowChecked = true;
        HeaderBuilderImpl headerBuilderImpl = new HeaderBuilderImpl(this);
        Uri uri = headerBuilder.mUri;
        if (uri != null) {
            headerBuilderImpl.mSliceBuilder = new Slice.Builder(uri);
        }
        headerBuilderImpl.mPrimaryAction = null;
        headerBuilderImpl.mSliceBuilder.addInt(0, "layout_direction", new String[0]);
        CharSequence charSequence = headerBuilder.mTitle;
        if (charSequence != null || headerBuilder.mTitleLoading) {
            boolean z = headerBuilder.mTitleLoading;
            SliceItem sliceItem = new SliceItem(charSequence, "text", (String) null, new String[]{UniversalCredentialUtil.AGENT_TITLE});
            headerBuilderImpl.mTitleItem = sliceItem;
            if (z) {
                sliceItem.addHint();
            }
        }
        this.mSliceHeader = headerBuilderImpl.build();
    }

    @Override // androidx.slice.builders.impl.ListBuilder
    public final void setTtl(long j) {
        long j2 = -1;
        if (j != -1) {
            ((SystemClock) this.mClock).getClass();
            j2 = System.currentTimeMillis() + j;
        }
        this.mSliceBuilder.addTimestamp(j2, "millis", "ttl");
    }

    public ListBuilderImpl(Slice.Builder builder, SliceSpec sliceSpec, Clock clock) {
        super(builder, sliceSpec, clock);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class HeaderBuilderImpl extends TemplateBuilderImpl {
        public SliceAction mPrimaryAction;
        public SliceItem mTitleItem;

        public HeaderBuilderImpl(ListBuilderImpl listBuilderImpl) {
            super(new Slice.Builder(listBuilderImpl.mSliceBuilder), null);
        }

        @Override // androidx.slice.builders.impl.TemplateBuilderImpl
        public final void apply(Slice.Builder builder) {
            SliceItem sliceItem = this.mTitleItem;
            if (sliceItem != null) {
                builder.addItem(sliceItem);
            }
            SliceAction sliceAction = this.mPrimaryAction;
            if (sliceAction != null) {
                sliceAction.setPrimaryAction(builder);
            }
            if (this.mTitleItem != null) {
            } else {
                throw new IllegalStateException("Header requires a title or subtitle to be set.");
            }
        }

        private HeaderBuilderImpl(Uri uri) {
            super(new Slice.Builder(uri), null);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RowBuilderImpl extends TemplateBuilderImpl {
        public CharSequence mContentDescr;
        public final ArrayList mEndItems;
        public SliceAction mPrimaryAction;
        public Slice mStartItem;
        public SliceItem mTitleItem;

        private RowBuilderImpl(ListBuilderImpl listBuilderImpl) {
            super(new Slice.Builder(listBuilderImpl.mSliceBuilder), null);
            this.mEndItems = new ArrayList();
        }

        @Override // androidx.slice.builders.impl.TemplateBuilderImpl
        public final void apply(Slice.Builder builder) {
            Slice slice = this.mStartItem;
            if (slice != null) {
                builder.getClass();
                builder.addSubSlice(slice, null);
            }
            SliceItem sliceItem = this.mTitleItem;
            if (sliceItem != null) {
                builder.addItem(sliceItem);
            }
            int i = 0;
            while (true) {
                ArrayList arrayList = this.mEndItems;
                if (i >= arrayList.size()) {
                    break;
                }
                Slice slice2 = (Slice) arrayList.get(i);
                builder.getClass();
                slice2.getClass();
                builder.addSubSlice(slice2, null);
                i++;
            }
            CharSequence charSequence = this.mContentDescr;
            if (charSequence != null) {
                builder.addText(charSequence, "content_description", new String[0]);
            }
            SliceAction sliceAction = this.mPrimaryAction;
            if (sliceAction != null) {
                sliceAction.setPrimaryAction(builder);
            }
        }

        private RowBuilderImpl(Uri uri) {
            super(new Slice.Builder(uri), null);
            this.mEndItems = new ArrayList();
        }

        public RowBuilderImpl(Slice.Builder builder) {
            super(builder, null);
            this.mEndItems = new ArrayList();
        }
    }

    @Override // androidx.slice.builders.impl.ListBuilder
    public final void setTtl(Duration duration) {
        setTtl(duration == null ? -1L : duration.toMillis());
    }
}
