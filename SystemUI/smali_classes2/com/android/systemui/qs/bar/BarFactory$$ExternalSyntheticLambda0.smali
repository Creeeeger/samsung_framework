.class public final synthetic Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/BarFactory;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarFactory;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BarFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BarFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/systemui/qs/bar/BarType;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->isAvailable()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    iput-boolean p0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
