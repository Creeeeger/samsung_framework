.class public final Lcom/samsung/android/knox/kpm/RequestInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CMD_IS_REGISTERED:I = 0x3

.field public static final CMD_REGISTER:I = 0x1

.field public static final CMD_UNREGISTER:I = 0x2


# instance fields
.field public mCmd:I

.field public mForce:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return-void
.end method


# virtual methods
.method public final getCmd()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    .line 2
    .line 3
    return p0
.end method

.method public final isForce()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    .line 2
    .line 3
    return p0
.end method
