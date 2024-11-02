package com.google.dexmaker.dx.rop.cst;

import com.google.dexmaker.dx.rop.type.Prototype;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class CstBaseMethodRef extends CstMemberRef {
    public final Prototype prototype;

    public CstBaseMethodRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
        this.prototype = Prototype.intern(this.nat.descriptor.string);
    }

    @Override // com.google.dexmaker.dx.rop.cst.CstMemberRef, com.google.dexmaker.dx.rop.cst.Constant
    public final int compareTo0(Constant constant) {
        int compareTo0 = super.compareTo0(constant);
        if (compareTo0 != 0) {
            return compareTo0;
        }
        return this.prototype.compareTo(((CstBaseMethodRef) constant).prototype);
    }
}
