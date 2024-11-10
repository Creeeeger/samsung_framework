package com.android.modules.utils.build;

import android.os.Build;
import android.util.SparseArray;
import java.util.Set;

/* loaded from: classes.dex */
public final class UnboundedSdkLevel {
    public static final SparseArray PREVIOUS_CODENAMES;
    public static final UnboundedSdkLevel sInstance;
    public final String mCodename;
    public final boolean mIsReleaseBuild;
    public final Set mKnownCodenames;
    public final int mSdkInt;

    public static boolean isAtLeast(String str) {
        return sInstance.isAtLeastInternal(str);
    }

    public static boolean isAtMost(String str) {
        return sInstance.isAtMostInternal(str);
    }

    static {
        Set set;
        SparseArray sparseArray = new SparseArray(4);
        PREVIOUS_CODENAMES = sparseArray;
        sparseArray.put(29, Set.of("Q"));
        sparseArray.put(30, Set.of("Q", "R"));
        sparseArray.put(31, Set.of("Q", "R", "S"));
        sparseArray.put(32, Set.of("Q", "R", "S", "Sv2"));
        int i = Build.VERSION.SDK_INT;
        String str = Build.VERSION.CODENAME;
        if (SdkLevel.isAtLeastT()) {
            set = Build.VERSION.KNOWN_CODENAMES;
        } else {
            set = (Set) sparseArray.get(i);
        }
        sInstance = new UnboundedSdkLevel(i, str, set);
    }

    public UnboundedSdkLevel(int i, String str, Set set) {
        this.mSdkInt = i;
        this.mCodename = str;
        this.mIsReleaseBuild = "REL".equals(str);
        this.mKnownCodenames = set;
    }

    public boolean isAtLeastInternal(String str) {
        String removeFingerprint = removeFingerprint(str);
        if (this.mIsReleaseBuild) {
            if (!isCodename(removeFingerprint)) {
                return this.mSdkInt >= Integer.parseInt(removeFingerprint);
            }
            if (!this.mKnownCodenames.contains(removeFingerprint)) {
                return false;
            }
            throw new IllegalArgumentException("Artifact with a known codename " + removeFingerprint + " must be recompiled with a finalized integer version.");
        }
        if (isCodename(removeFingerprint)) {
            return this.mKnownCodenames.contains(removeFingerprint);
        }
        return this.mSdkInt >= Integer.parseInt(removeFingerprint);
    }

    public boolean isAtMostInternal(String str) {
        String removeFingerprint = removeFingerprint(str);
        if (!this.mIsReleaseBuild) {
            return isCodename(removeFingerprint) ? !this.mKnownCodenames.contains(removeFingerprint) || this.mCodename.equals(removeFingerprint) : this.mSdkInt < Integer.parseInt(removeFingerprint);
        }
        if (!isCodename(removeFingerprint)) {
            return this.mSdkInt <= Integer.parseInt(removeFingerprint);
        }
        if (!this.mKnownCodenames.contains(removeFingerprint)) {
            return true;
        }
        throw new IllegalArgumentException("Artifact with a known codename " + removeFingerprint + " must be recompiled with a finalized integer version.");
    }

    public String removeFingerprint(String str) {
        int indexOf;
        return (!isCodename(str) || (indexOf = str.indexOf(46)) == -1) ? str : str.substring(0, indexOf);
    }

    public final boolean isCodename(String str) {
        if (str.length() == 0) {
            throw new IllegalArgumentException();
        }
        return Character.isUpperCase(str.charAt(0));
    }
}
