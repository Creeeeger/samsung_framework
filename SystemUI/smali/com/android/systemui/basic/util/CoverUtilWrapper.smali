.class public final Lcom/android/systemui/basic/util/CoverUtilWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mActionBeforeSecureConfirm:Ljava/lang/Runnable;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverUtil:Lcom/android/systemui/util/CoverUtil;

.field public final mListeners:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/CoverUtil;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/basic/util/CoverUtilWrapper;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p1, Lcom/android/systemui/util/CoverUtil;->mCoverStateChangedListeners:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
