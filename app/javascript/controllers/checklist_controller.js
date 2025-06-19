import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  toggle(event) {
    const checkbox = event.target;
    const questId = checkbox.dataset.questId;
    const label = this.findLabel(checkbox);

    this.toggleStrikeThrough(label, checkbox.checked);

    fetch(`/quests/${questId}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]')
          .content,
      },
      body: JSON.stringify({ quest: { done: checkbox.checked } }),
    })
      .then((response) => {
        if (!response.ok) throw new Error();
      })
      .catch(() => {
        alert("Failed to update quest status");
        checkbox.checked = !checkbox.checked;
        this.toggleStrikeThrough(label, checkbox.checked);
      });
  }

  findLabel(checkbox) {
    return checkbox.closest("li")?.querySelector("label");
  }

  updateLabelStyle(label, isDone) {
    label?.classList.toggle("line-through", isDone);
  }
}
