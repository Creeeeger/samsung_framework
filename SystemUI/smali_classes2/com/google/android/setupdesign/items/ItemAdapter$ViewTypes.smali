.class public final Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public nextPosition:I

.field public final positionMap:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;->positionMap:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;->nextPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/setupdesign/items/ItemAdapter$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;-><init>()V

    return-void
.end method
