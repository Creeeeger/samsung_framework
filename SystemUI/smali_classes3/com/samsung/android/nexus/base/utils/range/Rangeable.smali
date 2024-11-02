.class public abstract Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;


# instance fields
.field public mIsSingleValue:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    .line 6
    .line 7
    return-void
.end method
