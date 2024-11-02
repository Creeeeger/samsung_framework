package androidx.slice.widget;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.SliceItem;
import androidx.slice.core.SliceActionImpl;
import androidx.slice.core.SliceQuery;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GridContent extends SliceContent {
    public boolean mAllImages;
    public IconCompat mFirstImage;
    public Point mFirstImageSize;
    public final ArrayList mGridContent;
    public boolean mIsLastIndex;
    public int mLargestImageMode;
    public int mMaxCellLineCount;
    public SliceItem mPrimaryAction;
    public SliceItem mSeeMoreItem;
    public SliceItem mTitleItem;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CellContent {
        public final ArrayList mCellItems;
        public SliceItem mContentDescr;
        public SliceItem mContentIntent;
        public IconCompat mImage;
        public int mImageCount;
        public int mImageMode;
        public SliceItem mOverlayItem;
        public SliceItem mPicker;
        public int mTextCount;
        public SliceItem mTitleItem;
        public SliceItem mToggleItem;

        public CellContent(SliceItem sliceItem) {
            boolean z;
            List list;
            ArrayList arrayList = new ArrayList();
            this.mCellItems = arrayList;
            this.mImageMode = -1;
            String str = sliceItem.mFormat;
            boolean z2 = false;
            if (!sliceItem.hasHint("shortcut") && ("slice".equals(str) || "action".equals(str))) {
                List items = sliceItem.getSlice().getItems();
                Iterator it = items.iterator();
                while (true) {
                    if (it.hasNext()) {
                        SliceItem sliceItem2 = (SliceItem) it.next();
                        if ("action".equals(sliceItem2.mFormat) || "slice".equals(sliceItem2.mFormat)) {
                            if (!"date_picker".equals(sliceItem2.mSubType) && !"time_picker".equals(sliceItem2.mSubType)) {
                                list = sliceItem2.getSlice().getItems();
                                if (new SliceActionImpl(sliceItem2).isToggle()) {
                                    this.mToggleItem = sliceItem2;
                                } else {
                                    this.mContentIntent = (SliceItem) items.get(0);
                                }
                            }
                        }
                    } else {
                        list = null;
                        break;
                    }
                }
                if ("action".equals(str)) {
                    this.mContentIntent = sliceItem;
                }
                this.mTextCount = 0;
                this.mImageCount = 0;
                fillCellItems(items);
                if (this.mTextCount == 0 && this.mImageCount == 0 && list != null) {
                    fillCellItems(list);
                }
            } else {
                String str2 = sliceItem.mFormat;
                if (!"content_description".equals(sliceItem.mSubType) && !sliceItem.hasAnyHints("keywords", "ttl", "last_updated")) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z && ("text".equals(str2) || "long".equals(str2) || "image".equals(str2))) {
                    z2 = true;
                }
                if (z2) {
                    arrayList.add(sliceItem);
                }
            }
            if (this.mPicker == null) {
                ArrayList arrayList2 = this.mCellItems;
                if (arrayList2.size() > 0) {
                    arrayList2.size();
                }
            }
        }

        public final void fillCellItems(List list) {
            for (int i = 0; i < list.size(); i++) {
                SliceItem sliceItem = (SliceItem) list.get(i);
                String str = sliceItem.mFormat;
                if (this.mPicker == null && ("date_picker".equals(sliceItem.mSubType) || "time_picker".equals(sliceItem.mSubType))) {
                    this.mPicker = sliceItem;
                } else if ("content_description".equals(sliceItem.mSubType)) {
                    this.mContentDescr = sliceItem;
                } else {
                    int i2 = this.mTextCount;
                    ArrayList arrayList = this.mCellItems;
                    if (i2 < 2 && ("text".equals(str) || "long".equals(str))) {
                        SliceItem sliceItem2 = this.mTitleItem;
                        if (sliceItem2 == null || (!sliceItem2.hasHint(UniversalCredentialUtil.AGENT_TITLE) && sliceItem.hasHint(UniversalCredentialUtil.AGENT_TITLE))) {
                            this.mTitleItem = sliceItem;
                        }
                        if (sliceItem.hasHint("overlay")) {
                            if (this.mOverlayItem == null) {
                                this.mOverlayItem = sliceItem;
                            }
                        } else {
                            this.mTextCount++;
                            arrayList.add(sliceItem);
                        }
                    } else if (this.mImageCount < 1 && "image".equals(sliceItem.mFormat)) {
                        this.mImageMode = SliceActionImpl.parseImageMode(sliceItem);
                        this.mImageCount++;
                        this.mImage = (IconCompat) sliceItem.mObj;
                        arrayList.add(sliceItem);
                    }
                }
            }
        }
    }

    public GridContent(SliceItem sliceItem, int i) {
        super(sliceItem, i);
        boolean z;
        boolean z2;
        List items;
        this.mGridContent = new ArrayList();
        this.mLargestImageMode = 5;
        this.mFirstImage = null;
        this.mFirstImageSize = null;
        SliceItem find = SliceQuery.find(sliceItem, (String) null, "see_more");
        this.mSeeMoreItem = find;
        if (find != null && "slice".equals(find.mFormat) && (items = this.mSeeMoreItem.getSlice().getItems()) != null && items.size() > 0) {
            this.mSeeMoreItem = (SliceItem) items.get(0);
        }
        this.mPrimaryAction = SliceQuery.find(sliceItem, "slice", new String[]{"shortcut", UniversalCredentialUtil.AGENT_TITLE}, new String[]{"actions"});
        this.mAllImages = true;
        if ("slice".equals(sliceItem.mFormat)) {
            List items2 = sliceItem.getSlice().getItems();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < items2.size(); i2++) {
                SliceItem sliceItem2 = (SliceItem) items2.get(i2);
                if (SliceQuery.find(sliceItem2, (String) null, "see_more") != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z && !sliceItem2.hasAnyHints("shortcut", "see_more", "keywords", "ttl", "last_updated", "overlay")) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if ("content_description".equals(sliceItem2.mSubType)) {
                    this.mContentDescr = sliceItem2;
                } else if (!z2) {
                    arrayList.add(sliceItem2);
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                SliceItem sliceItem3 = (SliceItem) arrayList.get(i3);
                if (!"content_description".equals(sliceItem3.mSubType)) {
                    processContent(new CellContent(sliceItem3));
                }
            }
        } else {
            processContent(new CellContent(sliceItem));
        }
        isValid();
    }

    public final Point getFirstImageSize(Context context) {
        IconCompat iconCompat = this.mFirstImage;
        if (iconCompat == null) {
            return new Point(-1, -1);
        }
        if (this.mFirstImageSize == null) {
            Drawable loadDrawable = iconCompat.loadDrawable(context);
            this.mFirstImageSize = new Point(loadDrawable.getIntrinsicWidth(), loadDrawable.getIntrinsicHeight());
        }
        return this.mFirstImageSize;
    }

    @Override // androidx.slice.widget.SliceContent
    public final int getHeight(SliceStyle sliceStyle, SliceViewPolicy sliceViewPolicy) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        sliceStyle.getClass();
        int i3 = 0;
        int i4 = 1;
        if (sliceViewPolicy.mMode == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!isValid()) {
            return 0;
        }
        int i5 = this.mLargestImageMode;
        boolean z5 = this.mAllImages;
        Context context = sliceStyle.mContext;
        if (z5) {
            if (this.mGridContent.size() == 1) {
                if (z) {
                    i = sliceStyle.mGridBigPicMinHeight;
                } else {
                    i = sliceStyle.mGridBigPicMaxHeight;
                }
            } else {
                if (i5 != 0) {
                    if (i5 == 4) {
                        i = getFirstImageSize(context).y;
                    } else {
                        i = sliceStyle.mGridAllImagesHeight;
                    }
                }
                i = sliceStyle.mGridMinHeight;
            }
        } else {
            if (this.mMaxCellLineCount > 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.mFirstImage != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (i5 != 0 && i5 != 5) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (i5 == 4) {
                int i6 = getFirstImageSize(context).y;
                if (z2) {
                    i4 = 2;
                }
                i = i6 + (i4 * sliceStyle.mGridRawImageTextHeight);
            } else if (z2 && !z) {
                if (z3) {
                    i = sliceStyle.mGridMaxHeight;
                }
                i = sliceStyle.mGridMinHeight;
            } else {
                if (!z4) {
                    i = sliceStyle.mGridImageTextHeight;
                }
                i = sliceStyle.mGridMinHeight;
            }
        }
        boolean z6 = this.mAllImages;
        if (z6 && this.mRowIndex == 0) {
            i2 = sliceStyle.mGridTopPadding;
        } else {
            i2 = 0;
        }
        if (z6 && this.mIsLastIndex) {
            i3 = sliceStyle.mGridBottomPadding;
        }
        return i3 + i + i2;
    }

    public final boolean isValid() {
        boolean z;
        if (this.mSliceItem != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && this.mGridContent.size() > 0) {
            return true;
        }
        return false;
    }

    public final void processContent(CellContent cellContent) {
        boolean z;
        boolean z2;
        int max;
        SliceItem sliceItem;
        SliceItem sliceItem2 = cellContent.mPicker;
        boolean z3 = false;
        ArrayList arrayList = cellContent.mCellItems;
        if (sliceItem2 == null && (arrayList.size() <= 0 || arrayList.size() > 3)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            if (this.mTitleItem == null && (sliceItem = cellContent.mTitleItem) != null) {
                this.mTitleItem = sliceItem;
            }
            this.mGridContent.add(cellContent);
            if (arrayList.size() == 1 && "image".equals(((SliceItem) arrayList.get(0)).mFormat)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                this.mAllImages = false;
            }
            this.mMaxCellLineCount = Math.max(this.mMaxCellLineCount, cellContent.mTextCount);
            if (this.mFirstImage == null) {
                IconCompat iconCompat = cellContent.mImage;
                if (iconCompat != null) {
                    z3 = true;
                }
                if (z3) {
                    this.mFirstImage = iconCompat;
                }
            }
            int i = this.mLargestImageMode;
            if (i == 5) {
                max = cellContent.mImageMode;
            } else {
                max = Math.max(i, cellContent.mImageMode);
            }
            this.mLargestImageMode = max;
        }
    }
}
