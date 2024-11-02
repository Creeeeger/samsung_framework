.class public final Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;->this$1:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;->this$1:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    return-object p0
.end method
