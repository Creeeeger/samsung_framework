package androidx.slice.widget;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.slice.widget.SliceView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EventInfo {
    public final int actionType;
    public final int rowIndex;
    public final int rowTemplateType;
    public final int sliceMode;
    public int actionPosition = -1;
    public int actionIndex = -1;
    public int actionCount = -1;
    public int state = -1;

    public EventInfo(int i, int i2, int i3, int i4) {
        this.sliceMode = i;
        this.actionType = i2;
        this.rowTemplateType = i3;
        this.rowIndex = i4;
    }

    public final String toString() {
        String str;
        String str2;
        String str3;
        StringBuilder sb = new StringBuilder("mode=");
        SliceView.AnonymousClass3 anonymousClass3 = SliceView.SLICE_ACTION_PRIORITY_COMPARATOR;
        int i = this.sliceMode;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    str = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown mode: ", i);
                } else {
                    str = "MODE SHORTCUT";
                }
            } else {
                str = "MODE LARGE";
            }
        } else {
            str = "MODE SMALL";
        }
        sb.append(str);
        sb.append(", actionType=");
        String str4 = "TIME_PICK";
        int i2 = this.actionType;
        switch (i2) {
            case 0:
                str2 = "TOGGLE";
                break;
            case 1:
                str2 = "BUTTON";
                break;
            case 2:
                str2 = "SLIDER";
                break;
            case 3:
                str2 = "CONTENT";
                break;
            case 4:
                str2 = "SEE MORE";
                break;
            case 5:
                str2 = "SELECTION";
                break;
            case 6:
                str2 = "DATE_PICK";
                break;
            case 7:
                str2 = "TIME_PICK";
                break;
            default:
                str2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown action: ", i2);
                break;
        }
        sb.append(str2);
        sb.append(", rowTemplateType=");
        int i3 = this.rowTemplateType;
        switch (i3) {
            case -1:
                str4 = "SHORTCUT";
                break;
            case 0:
                str4 = "LIST";
                break;
            case 1:
                str4 = "GRID";
                break;
            case 2:
                str4 = "MESSAGING";
                break;
            case 3:
                str4 = "TOGGLE";
                break;
            case 4:
                str4 = "SLIDER";
                break;
            case 5:
                str4 = "PROGRESS";
                break;
            case 6:
                str4 = "SELECTION";
                break;
            case 7:
                str4 = "DATE_PICK";
                break;
            case 8:
                break;
            default:
                str4 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown row type: ", i3);
                break;
        }
        sb.append(str4);
        sb.append(", rowIndex=");
        sb.append(this.rowIndex);
        sb.append(", actionPosition=");
        int i4 = this.actionPosition;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    str3 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown position: ", i4);
                } else {
                    str3 = "CELL";
                }
            } else {
                str3 = "END";
            }
        } else {
            str3 = "START";
        }
        sb.append(str3);
        sb.append(", actionIndex=");
        sb.append(this.actionIndex);
        sb.append(", actionCount=");
        sb.append(this.actionCount);
        sb.append(", state=");
        sb.append(this.state);
        return sb.toString();
    }
}
