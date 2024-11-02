package androidx.slice.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import androidx.slice.core.SliceAction;
import androidx.slice.core.SliceActionImpl;
import androidx.slice.core.SliceQuery;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ListContent extends SliceContent {
    public RowContent mHeaderContent;
    public SliceActionImpl mPrimaryAction;
    public final ArrayList mRowItems;
    public RowContent mSeeMoreContent;
    public List mSliceActions;

    public ListContent(Slice slice) {
        super(slice);
        this.mRowItems = new ArrayList();
        if (this.mSliceItem == null) {
            return;
        }
        populate(slice);
    }

    public static int getRowType(SliceContent sliceContent, boolean z, List list) {
        SliceActionImpl sliceActionImpl;
        if (sliceContent == null) {
            return 0;
        }
        if (sliceContent instanceof GridContent) {
            return 1;
        }
        RowContent rowContent = (RowContent) sliceContent;
        SliceItem sliceItem = rowContent.mPrimaryAction;
        if (sliceItem != null) {
            sliceActionImpl = new SliceActionImpl(sliceItem);
        } else {
            sliceActionImpl = null;
        }
        SliceItem sliceItem2 = rowContent.mRange;
        if (sliceItem2 != null) {
            if ("action".equals(sliceItem2.mFormat)) {
                return 4;
            }
            return 5;
        }
        if (rowContent.mSelection != null) {
            return 6;
        }
        if (sliceActionImpl != null && sliceActionImpl.isToggle()) {
            return 3;
        }
        if (z && list != null) {
            for (int i = 0; i < list.size(); i++) {
                if (((SliceAction) list.get(i)).isToggle()) {
                    return 3;
                }
            }
            return 0;
        }
        if (rowContent.mToggleItems.size() <= 0) {
            return 0;
        }
        return 3;
    }

    @Override // androidx.slice.widget.SliceContent
    public final int getHeight(SliceStyle sliceStyle, SliceViewPolicy sliceViewPolicy) {
        int i;
        sliceStyle.getClass();
        boolean z = true;
        if (sliceViewPolicy.mMode == 1) {
            return this.mHeaderContent.getHeight(sliceStyle, sliceViewPolicy);
        }
        int i2 = sliceViewPolicy.mMaxHeight;
        int listItemsHeight = sliceStyle.getListItemsHeight(this.mRowItems, sliceViewPolicy);
        if (i2 > 0) {
            i2 = Math.max(this.mHeaderContent.getHeight(sliceStyle, sliceViewPolicy), i2);
        }
        if (i2 > 0) {
            i = i2;
        } else {
            i = sliceStyle.mListLargeHeight;
        }
        if (listItemsHeight - i < sliceStyle.mListMinScrollHeight) {
            z = false;
        }
        if (z && !sliceStyle.mExpandToAvailableHeight) {
            listItemsHeight = i;
        } else if (i2 > 0) {
            listItemsHeight = Math.min(i, listItemsHeight);
        }
        if (!sliceViewPolicy.mScrollable) {
            return sliceStyle.getListItemsHeight(sliceStyle.getListItemsForNonScrollingList(this, listItemsHeight, sliceViewPolicy).mDisplayedItems, sliceViewPolicy);
        }
        return listItemsHeight;
    }

    public final SliceAction getShortcut(Context context) {
        SliceItem sliceItem;
        SliceItem sliceItem2;
        int i;
        SliceActionImpl sliceActionImpl;
        IconCompat iconCompat;
        CharSequence charSequence;
        ApplicationInfo applicationInfo;
        Intent launchIntentForPackage;
        IconCompat createWithBitmap;
        SliceActionImpl sliceActionImpl2 = this.mPrimaryAction;
        if (sliceActionImpl2 == null) {
            SliceItem sliceItem3 = this.mSliceItem;
            if (sliceItem3 != null) {
                SliceItem find = SliceQuery.find(sliceItem3, "action", new String[]{UniversalCredentialUtil.AGENT_TITLE, "shortcut"}, (String[]) null);
                if (find != null) {
                    sliceItem = SliceQuery.find(find, "image", UniversalCredentialUtil.AGENT_TITLE);
                    sliceItem2 = SliceQuery.find(find, "text", (String) null);
                } else {
                    sliceItem = null;
                    sliceItem2 = null;
                }
                if (find == null) {
                    find = SliceQuery.find(this.mSliceItem, "action", (String) null);
                }
                if (sliceItem == null) {
                    sliceItem = SliceQuery.find(this.mSliceItem, "image", UniversalCredentialUtil.AGENT_TITLE);
                }
                if (sliceItem2 == null) {
                    sliceItem2 = SliceQuery.find(this.mSliceItem, "text", UniversalCredentialUtil.AGENT_TITLE);
                }
                if (sliceItem == null) {
                    sliceItem = SliceQuery.find(this.mSliceItem, "image", (String) null);
                }
                if (sliceItem2 == null) {
                    sliceItem2 = SliceQuery.find(this.mSliceItem, "text", (String) null);
                }
                if (sliceItem != null) {
                    i = SliceActionImpl.parseImageMode(sliceItem);
                } else {
                    i = 5;
                }
                if (context != null) {
                    SliceItem find2 = SliceQuery.find(this.mSliceItem, "slice", (String) null);
                    if (find2 != null) {
                        Uri uri = find2.getSlice().getUri();
                        if (sliceItem != null) {
                            iconCompat = (IconCompat) sliceItem.mObj;
                        } else {
                            iconCompat = null;
                        }
                        if (sliceItem2 != null) {
                            charSequence = (CharSequence) sliceItem2.mObj;
                        } else {
                            charSequence = null;
                        }
                        PackageManager packageManager = context.getPackageManager();
                        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(uri.getAuthority(), 0);
                        if (resolveContentProvider != null) {
                            applicationInfo = resolveContentProvider.applicationInfo;
                        } else {
                            applicationInfo = null;
                        }
                        if (applicationInfo != null) {
                            if (iconCompat == null) {
                                Drawable applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                                if (applicationIcon instanceof BitmapDrawable) {
                                    createWithBitmap = IconCompat.createWithBitmap(((BitmapDrawable) applicationIcon).getBitmap());
                                } else {
                                    Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                                    Canvas canvas = new Canvas(createBitmap);
                                    applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                                    applicationIcon.draw(canvas);
                                    createWithBitmap = IconCompat.createWithBitmap(createBitmap);
                                }
                                iconCompat = createWithBitmap;
                                i = 2;
                            }
                            if (charSequence == null) {
                                charSequence = packageManager.getApplicationLabel(applicationInfo);
                            }
                            if (find == null && (launchIntentForPackage = packageManager.getLaunchIntentForPackage(applicationInfo.packageName)) != null) {
                                find = new SliceItem(PendingIntent.getActivity(context, 0, launchIntentForPackage, QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY), new Slice.Builder(uri).build(), "action", (String) null, new String[0]);
                            }
                        }
                        if (find == null) {
                            find = new SliceItem(PendingIntent.getActivity(context, 0, new Intent(), QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY), (Slice) null, "action", (String) null, (String[]) null);
                        }
                        if (charSequence != null && iconCompat != null) {
                            sliceActionImpl = new SliceActionImpl(find.getAction(), iconCompat, i, charSequence);
                            return sliceActionImpl;
                        }
                    }
                } else if (sliceItem != null && find != null && sliceItem2 != null) {
                    sliceActionImpl = new SliceActionImpl(find.getAction(), (IconCompat) sliceItem.mObj, i, (CharSequence) sliceItem2.mObj);
                    return sliceActionImpl;
                }
            }
            return null;
        }
        return sliceActionImpl2;
    }

    public final boolean isValid() {
        boolean z;
        if (this.mSliceItem != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && this.mRowItems.size() > 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0088, code lost:
    
        if (r11 != false) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.slice.core.SliceActionImpl] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void populate(androidx.slice.Slice r18) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.ListContent.populate(androidx.slice.Slice):void");
    }

    @Deprecated
    public ListContent(Context context, Slice slice) {
        super(slice);
        this.mRowItems = new ArrayList();
        if (this.mSliceItem == null) {
            return;
        }
        populate(slice);
    }
}
