.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->DEBUG:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateDataText()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    .line 12
    .line 13
    return-void
.end method
