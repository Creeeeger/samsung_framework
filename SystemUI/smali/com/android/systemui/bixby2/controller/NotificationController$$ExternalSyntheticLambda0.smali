.class public final synthetic Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->$r8$lambda$oy8SKTs5ek_4V-5RLC-rhwmrJzE(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
