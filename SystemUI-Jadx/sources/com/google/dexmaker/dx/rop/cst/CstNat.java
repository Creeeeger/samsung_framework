package com.google.dexmaker.dx.rop.cst;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CstNat extends Constant {
    public final CstString descriptor;
    public final CstString name;

    static {
        new CstNat(new CstString("TYPE"), new CstString("Ljava/lang/Class;"));
    }

    public CstNat(CstString cstString, CstString cstString2) {
        if (cstString != null) {
            if (cstString2 != null) {
                this.name = cstString;
                this.descriptor = cstString2;
                return;
            }
            throw new NullPointerException("descriptor == null");
        }
        throw new NullPointerException("name == null");
    }

    @Override // com.google.dexmaker.dx.rop.cst.Constant
    public final int compareTo0(Constant constant) {
        CstNat cstNat = (CstNat) constant;
        int compareTo = this.name.compareTo((Constant) cstNat.name);
        if (compareTo != 0) {
            return compareTo;
        }
        return this.descriptor.compareTo((Constant) cstNat.descriptor);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CstNat)) {
            return false;
        }
        CstNat cstNat = (CstNat) obj;
        if (!this.name.equals(cstNat.name) || !this.descriptor.equals(cstNat.descriptor)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.descriptor.hashCode() ^ (this.name.hashCode() * 31);
    }

    @Override // com.google.dexmaker.dx.util.ToHuman
    public final String toHuman() {
        return this.name.toHuman() + ':' + this.descriptor.toHuman();
    }

    public final String toString() {
        return "nat{" + toHuman() + '}';
    }
}
