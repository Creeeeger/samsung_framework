.class public abstract Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;
.super Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/dexmaker/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/type/Prototype;->compareTo(Lcom/google/dexmaker/dx/rop/type/Prototype;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method
