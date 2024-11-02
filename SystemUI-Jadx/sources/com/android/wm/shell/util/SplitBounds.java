package com.android.wm.shell.util;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.samsung.android.rune.CoreRune;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitBounds implements Parcelable {
    public static final Parcelable.Creator<SplitBounds> CREATOR = new Parcelable.Creator() { // from class: com.android.wm.shell.util.SplitBounds.1
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new SplitBounds(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new SplitBounds[i];
        }
    };
    public final boolean appsStackedVertically;
    public final Rect cellDividerBounds;
    public final float cellDividerHeightPercent;
    public final float cellDividerWidthPercent;
    public final float cellLeftTaskPercent;
    public final int cellPosition;
    public final Rect cellTaskBounds;
    public final int cellTaskId;
    public final float cellTopTaskPercent;
    public final float dividerHeightPercent;
    public final float dividerWidthPercent;
    public final float leftTaskPercent;
    public final Rect leftTopBounds;
    public final int leftTopTaskId;
    public final Rect rightBottomBounds;
    public final int rightBottomTaskId;
    public final float topTaskPercent;
    public final Rect visualDividerBounds;

    public SplitBounds(Rect rect, Rect rect2, int i, int i2) {
        this(rect, rect2, null, i, i2, -1, 0, -1);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SplitBounds)) {
            return false;
        }
        SplitBounds splitBounds = (SplitBounds) obj;
        if (!Objects.equals(this.leftTopBounds, splitBounds.leftTopBounds) || !Objects.equals(this.rightBottomBounds, splitBounds.rightBottomBounds) || this.leftTopTaskId != splitBounds.leftTopTaskId || this.rightBottomTaskId != splitBounds.rightBottomTaskId || !Objects.equals(this.cellTaskBounds, splitBounds.cellTaskBounds) || this.cellTaskId != splitBounds.cellTaskId) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.leftTopBounds, this.rightBottomBounds, Integer.valueOf(this.leftTopTaskId), Integer.valueOf(this.rightBottomTaskId));
    }

    public final String toString() {
        return "LeftTop: " + this.leftTopBounds + ", taskId: " + this.leftTopTaskId + "\nRightBottom: " + this.rightBottomBounds + ", taskId: " + this.rightBottomTaskId + "\ncell: " + this.cellTaskBounds + ", taskId: " + this.cellTaskId + "\n(Percent) top=" + this.topTaskPercent + ", left=" + this.leftTaskPercent + ", cell_top=" + this.cellTopTaskPercent + ", cell_left=" + this.cellLeftTaskPercent + "\nDivider: " + this.visualDividerBounds + "\nCellDivider: " + this.cellDividerBounds + "\nCellPosition: " + this.cellPosition + "\nAppsVertical? " + this.appsStackedVertically;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedObject(this.leftTopBounds, i);
        parcel.writeTypedObject(this.rightBottomBounds, i);
        parcel.writeTypedObject(this.visualDividerBounds, i);
        parcel.writeFloat(this.topTaskPercent);
        parcel.writeFloat(this.leftTaskPercent);
        parcel.writeBoolean(this.appsStackedVertically);
        parcel.writeInt(this.leftTopTaskId);
        parcel.writeInt(this.rightBottomTaskId);
        parcel.writeFloat(this.dividerWidthPercent);
        parcel.writeFloat(this.dividerHeightPercent);
        parcel.writeTypedObject(this.cellTaskBounds, i);
        parcel.writeInt(this.cellTaskId);
        parcel.writeInt(this.cellPosition);
        parcel.writeTypedObject(this.cellDividerBounds, i);
        parcel.writeFloat(this.cellTopTaskPercent);
        parcel.writeFloat(this.cellLeftTaskPercent);
        parcel.writeFloat(this.cellDividerWidthPercent);
        parcel.writeFloat(this.cellDividerHeightPercent);
    }

    public SplitBounds(Rect rect, Rect rect2, Rect rect3, int i, int i2, int i3, int i4, int i5) {
        float f;
        float width;
        float f2;
        this.leftTopBounds = rect;
        this.rightBottomBounds = rect2;
        this.leftTopTaskId = i;
        this.rightBottomTaskId = i2;
        this.cellTaskBounds = rect3;
        this.cellTaskId = i3;
        this.cellPosition = i4;
        if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && i3 != -1) {
            Rect rect4 = new Rect(rect3);
            if (i5 == 0) {
                this.appsStackedVertically = false;
                if ((i4 & 8) != 0) {
                    rect4.union(rect);
                    width = rect2.right - rect4.left;
                    this.visualDividerBounds = new Rect(rect4.right, rect4.top, rect2.left, rect2.bottom);
                    if ((i4 & 16) != 0) {
                        this.cellDividerBounds = new Rect(rect3.left, rect3.bottom, rect.right, rect.top);
                    } else {
                        this.cellDividerBounds = new Rect(rect.left, rect.bottom, rect3.right, rect3.top);
                    }
                } else {
                    rect4.union(rect2);
                    width = rect4.right - rect.left;
                    this.visualDividerBounds = new Rect(rect.right, rect.top, rect4.left, rect4.bottom);
                    if ((i4 & 16) != 0) {
                        this.cellDividerBounds = new Rect(rect3.left, rect3.bottom, rect2.right, rect2.top);
                    } else {
                        this.cellDividerBounds = new Rect(rect2.left, rect2.bottom, rect3.right, rect3.top);
                    }
                }
                this.leftTaskPercent = rect.width() / rect2.right;
                this.cellTopTaskPercent = rect3.height() / rect4.height();
                this.topTaskPercent = 1.0f;
                this.cellLeftTaskPercent = 1.0f;
                f2 = rect4.height();
            } else {
                this.appsStackedVertically = true;
                if ((i4 & 16) != 0) {
                    rect4.union(rect);
                    f = rect2.bottom - rect4.top;
                    this.visualDividerBounds = new Rect(rect4.left, rect4.bottom, rect2.right, rect2.top);
                    if ((i4 & 8) != 0) {
                        this.cellDividerBounds = new Rect(rect3.right, rect3.top, rect.left, rect.bottom);
                    } else {
                        this.cellDividerBounds = new Rect(rect.right, rect.top, rect3.left, rect3.bottom);
                    }
                } else {
                    rect4.union(rect2);
                    f = rect4.bottom - rect.top;
                    this.visualDividerBounds = new Rect(rect.left, rect.bottom, rect4.right, rect4.top);
                    if ((i4 & 8) != 0) {
                        this.cellDividerBounds = new Rect(rect3.right, rect3.top, rect2.left, rect2.bottom);
                    } else {
                        this.cellDividerBounds = new Rect(rect2.right, rect2.top, rect3.left, rect3.bottom);
                    }
                }
                this.topTaskPercent = rect.height() / (rect2.bottom - rect.top);
                this.cellLeftTaskPercent = rect3.width() / rect4.right;
                this.leftTaskPercent = 1.0f;
                this.cellTopTaskPercent = 1.0f;
                float f3 = f;
                width = rect4.width();
                f2 = f3;
            }
            this.dividerWidthPercent = this.visualDividerBounds.width() / width;
            this.dividerHeightPercent = this.visualDividerBounds.height() / f2;
            this.cellDividerWidthPercent = this.cellDividerBounds.width() / rect4.width();
            this.cellDividerHeightPercent = this.cellDividerBounds.height() / rect4.height();
            return;
        }
        if (rect2.top > rect.top) {
            this.visualDividerBounds = new Rect(rect.left, rect.bottom, rect.right, rect2.top);
            this.appsStackedVertically = true;
        } else {
            this.visualDividerBounds = new Rect(rect.right, rect.top, rect2.left, rect.bottom);
            this.appsStackedVertically = false;
        }
        float f4 = rect2.right - rect.left;
        float f5 = rect2.bottom - rect.top;
        this.leftTaskPercent = rect.width() / f4;
        this.topTaskPercent = rect.height() / f5;
        this.dividerWidthPercent = this.visualDividerBounds.width() / f4;
        this.dividerHeightPercent = this.visualDividerBounds.height() / f5;
        this.cellDividerBounds = null;
        this.cellTopTaskPercent = 0.5f;
        this.cellLeftTaskPercent = 0.5f;
        this.cellDividerWidthPercent = 0.0f;
        this.cellDividerHeightPercent = 0.0f;
    }

    public SplitBounds(Parcel parcel) {
        this.leftTopBounds = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.rightBottomBounds = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.visualDividerBounds = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.topTaskPercent = parcel.readFloat();
        this.leftTaskPercent = parcel.readFloat();
        this.appsStackedVertically = parcel.readBoolean();
        this.leftTopTaskId = parcel.readInt();
        this.rightBottomTaskId = parcel.readInt();
        this.dividerWidthPercent = parcel.readFloat();
        this.dividerHeightPercent = parcel.readFloat();
        this.cellTaskBounds = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.cellTaskId = parcel.readInt();
        this.cellPosition = parcel.readInt();
        this.cellDividerBounds = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.cellTopTaskPercent = parcel.readFloat();
        this.cellLeftTaskPercent = parcel.readFloat();
        this.cellDividerWidthPercent = parcel.readFloat();
        this.cellDividerHeightPercent = parcel.readFloat();
    }
}
