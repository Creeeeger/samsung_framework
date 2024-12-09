package com.sec.internal.ims.servicemodules.ss;

import com.sec.internal.ims.servicemodules.ss.SsRuleData;

/* loaded from: classes.dex */
public class CallForwardingData extends SsRuleData {
    int replyTimer;

    static class Rule extends SsRuleData.SsRule {
        ForwardTo fwdElm = new ForwardTo();

        Rule() {
        }

        public void clear() {
            this.conditions = new Condition();
            this.fwdElm = new ForwardTo();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.ss.SsRuleData
    public Rule getRule(int i, MEDIA media) {
        Rule rule = (Rule) findRule(i, media);
        return rule != null ? rule : makeRule(i, media);
    }

    static Rule makeRule(int i, MEDIA media) {
        Rule rule = new Rule();
        SsRuleData.makeInternalRule(rule, i, media);
        rule.fwdElm = new ForwardTo();
        return rule;
    }

    @Override // com.sec.internal.ims.servicemodules.ss.SsRuleData
    void copyRule(SsRuleData.SsRule ssRule) {
        Rule rule = (Rule) ssRule;
        Rule rule2 = new Rule();
        ForwardTo forwardTo = new ForwardTo();
        rule2.fwdElm = forwardTo;
        ForwardTo forwardTo2 = rule.fwdElm;
        forwardTo.target = forwardTo2.target;
        forwardTo.fwdElm.addAll(forwardTo2.fwdElm);
        super.copySsRule(rule, rule2);
    }

    @Override // com.sec.internal.ims.servicemodules.ss.SsRuleData
    /* renamed from: clone */
    public final CallForwardingData mo1178clone() {
        CallForwardingData callForwardingData = new CallForwardingData();
        cloneSsDataInternal(callForwardingData);
        callForwardingData.replyTimer = this.replyTimer;
        return callForwardingData;
    }
}
