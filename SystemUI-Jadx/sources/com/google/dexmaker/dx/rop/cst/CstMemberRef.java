package com.google.dexmaker.dx.rop.cst;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class CstMemberRef extends TypedConstant {
    public final CstType definingClass;
    public final CstNat nat;

    public CstMemberRef(CstType cstType, CstNat cstNat) {
        if (cstType != null) {
            if (cstNat != null) {
                this.definingClass = cstType;
                this.nat = cstNat;
                return;
            }
            throw new NullPointerException("nat == null");
        }
        throw new NullPointerException("definingClass == null");
    }

    @Override // com.google.dexmaker.dx.rop.cst.Constant
    public int compareTo0(Constant constant) {
        CstMemberRef cstMemberRef = (CstMemberRef) constant;
        int compareTo = this.definingClass.compareTo((Constant) cstMemberRef.definingClass);
        if (compareTo != 0) {
            return compareTo;
        }
        return this.nat.name.compareTo((Constant) cstMemberRef.nat.name);
    }

    public final boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CstMemberRef cstMemberRef = (CstMemberRef) obj;
        if (!this.definingClass.equals(cstMemberRef.definingClass) || !this.nat.equals(cstMemberRef.nat)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.nat.hashCode() ^ (this.definingClass.hashCode() * 31);
    }

    @Override // com.google.dexmaker.dx.util.ToHuman
    public final String toHuman() {
        return this.definingClass.toHuman() + '.' + this.nat.toHuman();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("method{");
        typeName();
        sb.append(toHuman());
        sb.append('}');
        return sb.toString();
    }
}
