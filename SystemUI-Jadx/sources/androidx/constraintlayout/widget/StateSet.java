package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StateSet {
    public int mDefaultState;
    public final int mCurrentStateId = -1;
    public final int mCurrentConstraintNumber = -1;
    public final SparseArray mStateList = new SparseArray();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class State {
        public final int mConstraintID;
        public final int mId;
        public final ArrayList mVariants = new ArrayList();

        public State(Context context, XmlPullParser xmlPullParser) {
            this.mConstraintID = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.mId = obtainStyledAttributes.getResourceId(index, this.mId);
                } else if (index == 1) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    this.mConstraintID = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Variant {
        public final int mConstraintID;
        public final float mMaxHeight;
        public final float mMaxWidth;
        public final float mMinHeight;
        public final float mMinWidth;

        public Variant(Context context, XmlPullParser xmlPullParser) {
            this.mMinWidth = Float.NaN;
            this.mMinHeight = Float.NaN;
            this.mMaxWidth = Float.NaN;
            this.mMaxHeight = Float.NaN;
            this.mConstraintID = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    this.mConstraintID = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                } else if (index == 1) {
                    this.mMaxHeight = obtainStyledAttributes.getDimension(index, this.mMaxHeight);
                } else if (index == 2) {
                    this.mMinHeight = obtainStyledAttributes.getDimension(index, this.mMinHeight);
                } else if (index == 3) {
                    this.mMaxWidth = obtainStyledAttributes.getDimension(index, this.mMaxWidth);
                } else if (index == 4) {
                    this.mMinWidth = obtainStyledAttributes.getDimension(index, this.mMinWidth);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final boolean match(float f, float f2) {
            float f3 = this.mMinWidth;
            if (!Float.isNaN(f3) && f < f3) {
                return false;
            }
            float f4 = this.mMinHeight;
            if (!Float.isNaN(f4) && f2 < f4) {
                return false;
            }
            float f5 = this.mMaxWidth;
            if (!Float.isNaN(f5) && f > f5) {
                return false;
            }
            float f6 = this.mMaxHeight;
            if (!Float.isNaN(f6) && f2 > f6) {
                return false;
            }
            return true;
        }
    }

    public StateSet(Context context, XmlPullParser xmlPullParser) {
        this.mDefaultState = -1;
        new SparseArray();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                this.mDefaultState = obtainStyledAttributes.getResourceId(index, this.mDefaultState);
            }
        }
        obtainStyledAttributes.recycle();
        try {
            int eventType = xmlPullParser.getEventType();
            State state = null;
            while (true) {
                char c = 1;
                if (eventType != 1) {
                    if (eventType != 0) {
                        if (eventType != 2) {
                            if (eventType != 3) {
                                continue;
                            } else if ("StateSet".equals(xmlPullParser.getName())) {
                                return;
                            }
                        } else {
                            String name = xmlPullParser.getName();
                            switch (name.hashCode()) {
                                case 80204913:
                                    if (name.equals("State")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                                case 1301459538:
                                    if (name.equals("LayoutDescription")) {
                                        c = 0;
                                        break;
                                    }
                                    break;
                                case 1382829617:
                                    if (name.equals("StateSet")) {
                                        break;
                                    }
                                    break;
                                case 1901439077:
                                    if (name.equals("Variant")) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                            }
                            c = 65535;
                            if (c != 2) {
                                if (c == 3) {
                                    Variant variant = new Variant(context, xmlPullParser);
                                    if (state != null) {
                                        state.mVariants.add(variant);
                                    }
                                }
                            } else {
                                State state2 = new State(context, xmlPullParser);
                                this.mStateList.put(state2.mId, state2);
                                state = state2;
                            }
                        }
                    } else {
                        xmlPullParser.getName();
                    }
                    eventType = xmlPullParser.next();
                } else {
                    return;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    public final int stateGetConstraintID(int i) {
        ArrayList arrayList;
        int i2;
        State state;
        float f = -1;
        SparseArray sparseArray = this.mStateList;
        int i3 = 0;
        if (-1 == i) {
            if (i == -1) {
                state = (State) sparseArray.valueAt(0);
            } else {
                state = (State) sparseArray.get(this.mCurrentStateId);
            }
            if (state == null) {
                return -1;
            }
            ArrayList arrayList2 = state.mVariants;
            if (this.mCurrentConstraintNumber != -1 && ((Variant) arrayList2.get(-1)).match(f, f)) {
                return -1;
            }
            while (true) {
                if (i3 < arrayList2.size()) {
                    if (((Variant) arrayList2.get(i3)).match(f, f)) {
                        break;
                    }
                    i3++;
                } else {
                    i3 = -1;
                    break;
                }
            }
            if (-1 == i3) {
                return -1;
            }
            if (i3 == -1) {
                i2 = state.mConstraintID;
            } else {
                i2 = ((Variant) arrayList2.get(i3)).mConstraintID;
            }
        } else {
            State state2 = (State) sparseArray.get(i);
            if (state2 == null) {
                return -1;
            }
            while (true) {
                arrayList = state2.mVariants;
                if (i3 < arrayList.size()) {
                    if (((Variant) arrayList.get(i3)).match(f, f)) {
                        break;
                    }
                    i3++;
                } else {
                    i3 = -1;
                    break;
                }
            }
            if (i3 == -1) {
                i2 = state2.mConstraintID;
            } else {
                i2 = ((Variant) arrayList.get(i3)).mConstraintID;
            }
        }
        return i2;
    }
}
