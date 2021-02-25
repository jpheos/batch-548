import MarkdownIt from 'markdown-it';

const initMarkdown = () => {
  const textarea = document.querySelector('#editor');
  const preview = document.querySelector('#preview');
  const markdown = new MarkdownIt();

  textarea.addEventListener('keyup', (event) => {
    const html = markdown.render(textarea.value);
    preview.innerHTML = html;
  });
};

export { initMarkdown };
